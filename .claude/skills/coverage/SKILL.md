---
name: coverage
description: Run the requirements coverage report and show which requirements are uncovered by tests.
allowed-tools: Bash(scripts/coverage-report.sh)
---

## Current coverage report

```
!`scripts/coverage-report.sh`
```

Review the UNCOVERED section above. For each uncovered requirement:
1. Identify which test file should cover it
2. Show a suggested test stub with the appropriate `Covers: REQ-XXX-N` comment
3. Ask the user if they want the stubs written
