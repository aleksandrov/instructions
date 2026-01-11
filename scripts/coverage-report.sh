#!/bin/bash
# Requirements Coverage Report
# Compares requirement IDs in CLAUDE.md against test coverage

cd "$(dirname "$0")/.."

echo "=== REQUIREMENTS ==="
grep -oE 'REQ-[A-Z]+-[0-9]+' CLAUDE.md | sort -u

echo ""
echo "=== COVERED BY TESTS ==="
grep -rohE 'Covers:.*' --include='*Tests.cs' src/ | \
  grep -oE 'REQ-[A-Z]+-[0-9]+' | sort -u

echo ""
echo "=== UNCOVERED ==="
comm -23 \
  <(grep -oE 'REQ-[A-Z]+-[0-9]+' CLAUDE.md | sort -u) \
  <(grep -rohE 'Covers:.*' --include='*Tests.cs' src/ | grep -oE 'REQ-[A-Z]+-[0-9]+' | sort -u)
