#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/Projects/FinBank-AI-DevSecOps";mkdir -p finbank-app/build/classes evidence/day023
find finbank-app/src -type f -name '*.java' | sort > finbank-app/build/sources.list
javac -Xlint:all -d finbank-app/build/classes @finbank-app/build/sources.list 2> evidence/day023/compiler.log
{ echo '# Day023 Build Report'; echo '## Java'; java -version 2>&1 | head -2; echo '## Source Count'; wc -l < finbank-app/build/sources.list; echo '## Class Count'; find finbank-app/build/classes -type f -name '*.class' | wc -l; echo '## Compiler Log'; if test -s evidence/day023/compiler.log;then cat evidence/day023/compiler.log;else echo 'No compiler warnings or errors';fi; } | tee evidence/day023/build-report.md
