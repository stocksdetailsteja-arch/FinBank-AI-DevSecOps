#!/usr/bin/env bash
set -euo pipefail

repo="$HOME/Projects/FinBank-AI-DevSecOps"
cd "$repo"

mkdir -p evidence/day010

input="${1:-}"

if [[ -z "$input" ]]; then
  echo "Usage: $0 CSV_FILE" >&2
  exit 64
fi

if [[ ! -f "$input" ]]; then
  echo "Input file not found: $input" >&2
  exit 66
fi

out="evidence/day010/scheduled-report.md"

awk -F, '
NR > 1 {
    count++
    total += $3

    if ($2 == "SUCCESS")
        ok++
    else if ($2 == "FAILED")
        failed++
}
END {
    printf "# Day010 Scheduled Report\n\n"
    printf "Generated UTC: %s\n\n", strftime("%Y-%m-%dT%H:%M:%SZ", systime(), 1)

    printf "| Metric | Value |\n"
    printf "|---|---:|\n"
    printf "| Total records | %d |\n", count
    printf "| Successful | %d |\n", ok
    printf "| Failed | %d |\n", failed
    printf "| Total amount | %.2f |\n", total
}
' "$input" > "$out"

sed -i 's/[[:space:]]*$//' "$out"

printf 'Wrote %s\n' "$repo/$out"
