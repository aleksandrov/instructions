#!/bin/bash
# Requirements Coverage Report
# Compares requirement IDs in REQUIREMENTS.md against test coverage
# Language-agnostic: supports Python, JavaScript, TypeScript, C#, Java, Ruby, Go, Rust, etc.

cd "$(dirname "$0")/.."

echo "=== REQUIREMENTS ==="
grep -oE 'REQ-[A-Z]+-[0-9]+' REQUIREMENTS.md 2>/dev/null | sort -u

echo ""
echo "=== COVERED BY TESTS ==="
# Search for "Covers: REQ-XXX-N" in common test file patterns
# Supports: test*.*, *test.*, *Test.*, *Tests.*, *.test.*, *.spec.*
# Excludes: binaries, build artifacts, dependencies
find . -type f \( \
  -name 'test*' -o \
  -name '*test.*' -o \
  -name '*Test.*' -o \
  -name '*Tests.*' -o \
  -name '*.test.*' -o \
  -name '*.spec.*' \
\) \
  -not -path '*/node_modules/*' \
  -not -path '*/.git/*' \
  -not -path '*/venv/*' \
  -not -path '*/__pycache__/*' \
  -not -path '*/bin/*' \
  -not -path '*/obj/*' \
  -not -path '*/build/*' \
  -not -path '*/dist/*' \
  -not -path '*/target/*' \
  -not -path '*/.next/*' \
  -not -path '*/.pytest_cache/*' \
  -not -name '*.dll' \
  -not -name '*.exe' \
  -not -name '*.so' \
  -not -name '*.dylib' \
  -not -name '*.cache' \
  -not -name '*.json' \
  -not -name '*.xml' \
  -not -name '*.csproj' \
  -exec grep -ohE 'Covers:.*' {} \; 2>/dev/null | \
  grep -oE 'REQ-[A-Z]+-[0-9]+' | sort -u

echo ""
echo "=== UNCOVERED ==="
comm -23 \
  <(grep -oE 'REQ-[A-Z]+-[0-9]+' REQUIREMENTS.md 2>/dev/null | sort -u) \
  <(find . -type f \( \
    -name 'test*' -o \
    -name '*test.*' -o \
    -name '*Test.*' -o \
    -name '*Tests.*' -o \
    -name '*.test.*' -o \
    -name '*.spec.*' \
  \) \
    -not -path '*/node_modules/*' \
    -not -path '*/.git/*' \
    -not -path '*/venv/*' \
    -not -path '*/__pycache__/*' \
    -not -path '*/bin/*' \
    -not -path '*/obj/*' \
    -not -path '*/build/*' \
    -not -path '*/dist/*' \
    -not -path '*/target/*' \
    -not -path '*/.next/*' \
    -not -path '*/.pytest_cache/*' \
    -not -name '*.dll' \
    -not -name '*.exe' \
    -not -name '*.so' \
    -not -name '*.dylib' \
    -not -name '*.cache' \
    -not -name '*.json' \
    -not -name '*.xml' \
    -not -name '*.csproj' \
    -exec grep -ohE 'Covers:.*' {} \; 2>/dev/null | \
    grep -oE 'REQ-[A-Z]+-[0-9]+' | sort -u)
