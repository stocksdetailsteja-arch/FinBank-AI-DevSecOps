#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

base=${1:-http://127.0.0.1:8080}

mkdir -p evidence/day030

create_body=$(mktemp)
authorize_body=$(mktemp)
get_body=$(mktemp)
conflict_body=$(mktemp)
missing_body=$(mktemp)

cleanup() {
    rm -f \
        "$create_body" \
        "$authorize_body" \
        "$get_body" \
        "$conflict_body" \
        "$missing_body"
}

trap cleanup EXIT

if ! create_status=$(curl \
        -sS \
        --connect-timeout 2 \
        --max-time 5 \
        -X POST \
        -o "$create_body" \
        -w '%{http_code}' \
        "$base/payment-intents?sourceAccountId=ACC-2001&destinationAccountId=ACC-2002&amountMinor=10000"); then

    echo "Endpoint unavailable: $base/payment-intents"
    exit 69
fi

if [ "$create_status" != "201" ]; then
    echo "FAIL: payment intent creation returned HTTP $create_status"
    cat "$create_body"
    exit 70
fi

grep -q '"status":"CREATED"' "$create_body"

intent_id=$(
    sed -n \
        's/.*"intentId":"\([^"]*\)".*/\1/p' \
        "$create_body"
)

if [ -z "$intent_id" ]; then
    echo "FAIL: intentId not found in creation response"
    cat "$create_body"
    exit 71
fi

{
    echo "# Day030 Payment Authorization Validation"
    echo
    echo "PASS: Payment intent creation -> HTTP 201 -> $intent_id"
    cat "$create_body"
    echo
} | tee evidence/day030/authorization-validation.md

authorize_status=$(curl \
        -sS \
        --max-time 5 \
        -X POST \
        -o "$authorize_body" \
        -w '%{http_code}' \
        "$base/payment-intents/$intent_id/authorize")

if [ "$authorize_status" != "200" ]; then
    echo "FAIL: authorization returned HTTP $authorize_status"
    cat "$authorize_body"
    exit 72
fi

grep -q '"status":"AUTHORIZED"' "$authorize_body"

{
    echo "PASS: $intent_id authorization -> HTTP 200 -> AUTHORIZED"
    cat "$authorize_body"
    echo
} | tee -a evidence/day030/authorization-validation.md

get_status=$(curl \
        -sS \
        --max-time 5 \
        -o "$get_body" \
        -w '%{http_code}' \
        "$base/payment-intents/$intent_id")

if [ "$get_status" != "200" ]; then
    echo "FAIL: retrieval returned HTTP $get_status"
    cat "$get_body"
    exit 73
fi

grep -q '"status":"AUTHORIZED"' "$get_body"

{
    echo "PASS: GET $intent_id -> HTTP 200 -> AUTHORIZED"
    cat "$get_body"
    echo
} | tee -a evidence/day030/authorization-validation.md

conflict_status=$(curl \
        -sS \
        --max-time 5 \
        -X POST \
        -o "$conflict_body" \
        -w '%{http_code}' \
        "$base/payment-intents/$intent_id/authorize")

if [ "$conflict_status" != "409" ]; then
    echo "FAIL: duplicate authorization returned HTTP $conflict_status"
    cat "$conflict_body"
    exit 74
fi

grep -q 'payment intent must be CREATED' "$conflict_body"

{
    echo "PASS: duplicate authorization -> HTTP 409"
    cat "$conflict_body"
    echo
} | tee -a evidence/day030/authorization-validation.md

missing_status=$(curl \
        -sS \
        --max-time 5 \
        -X POST \
        -o "$missing_body" \
        -w '%{http_code}' \
        "$base/payment-intents/PAY-9999/authorize")

if [ "$missing_status" != "404" ]; then
    echo "FAIL: missing intent authorization returned HTTP $missing_status"
    cat "$missing_body"
    exit 75
fi

grep -q 'Payment Intent Not Found' "$missing_body"

{
    echo "PASS: missing intent authorization -> HTTP 404"
    cat "$missing_body"
    echo
    echo "PASS: Payment authorization feature tests"
} | tee -a evidence/day030/authorization-validation.md
