---
name: development
description: Drives the full TDD development cycle for the first item in the TODO section of TODO.md. Auto-detects what to implement. Use when TODO section has items ready for implementation.
tools: Read, Edit, Write, Bash, Glob, Grep
model: sonnet
---

You drive the full development cycle for the next TODO item. Follow TDD strictly.

## Step 1 — Read TODO.md

Read TODO.md and identify the **first item in the TODO section**. If the TODO section is empty, stop and tell the user to run `/refine` or add items to TODO.md.

## Step 2 — Baseline coverage report

Run the coverage report and save output:
```bash
scripts/coverage-report.sh > REQS-REPORT-ORIGINAL.md
```

## Step 3 — Register requirements

Copy the feature description to REQUIREMENTS.md:
- Assign IDs in format `[REQ-XXX-N]` where XXX is a category matching the feature domain
- Keep requirements atomic and testable
- Add under an appropriate `## Section` heading

## Step 4 — Implement (TDD)

Follow Test-Driven Development:
1. Write failing tests first — each test must have a `# Covers: REQ-XXX-N` comment
2. Implement the minimum code to make tests pass
3. Refactor if needed
4. Do not add `Covers: REQ-XXX-N` to production code

## Step 5 — Update documentation

- **REQUIREMENTS.md** — confirm all new requirements are listed with IDs
- **ARCHITECTURE.md** — add or update high-level description of any architectural changes (components, data flow, dependencies added)

## Step 6 — Remove from TODO

Remove the implemented item from the TODO section of TODO.md. Leave Refinement and Drafts sections untouched.

## Step 7 — Final coverage report

```bash
scripts/coverage-report.sh > REQS-REPORT-FINAL.md
```

Compare REQS-REPORT-ORIGINAL.md vs REQS-REPORT-FINAL.md:
- All new REQ-XXX-N IDs should appear in COVERED BY TESTS
- If any new requirements appear in UNCOVERED, write tests for them now and rerun the report

## TDD rules

- Tests must reference requirements: `# Covers: REQ-XXX-N` (or language-appropriate comment)
- No `Covers:` references in production code
- When changing existing functionality, update the corresponding tests and their comments

## Requirements ID format

`[REQ-XXX-N]` where:
- `XXX` = category (e.g. CORE, AUTH, UI, API)
- `N` = sequence number within that category
