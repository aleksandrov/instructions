Brief description of the project. Standard `Hello, World!` example.

**Note**: This file contains static instructions only. Implemented requirements are in [REQUIREMENTS.md](REQUIREMENTS.md), architecture is in [ARCHITECTURE.md](ARCHITECTURE.md).

# Mode Selection

Check TODO.md and select mode:
1. If `TODO` section has items → Use **Development** mode (skip Refinement)
2. If `TODO` section is empty AND `Refinement` section has items → Use **Refinement** mode
3. If both are empty → Await user instructions

# Refinement

**Prerequisites**: Only use this mode if TODO section in TODO.md is empty. Otherwise use Development mode.

Source: `Refinement` section of TODO.md

Steps:
1. Research:
   - Best practises for implementing the feature
   - Similar projects: what functionality do they have?
   - Non-functional requirements from similar projects
2. Build list of functional and non-functional requirements
3. Check existing requirements in REQUIREMENTS.md - avoid duplicates
4. Write requirements to TODO section of TODO.md
5. Clear Refinement section of TODO.md

# Development

**Priority**: This mode takes priority over Refinement mode.

Source: `TODO` section of TODO.md

Steps:
1. Run `scripts/coverage-report.sh` → save to REQS-REPORT-ORIGINAL.md
2. Copy feature description from TODO.md to REQUIREMENTS.md → assign requirement ID
3. Implement the functionality
4. Update documentation:
   - REQUIREMENTS.md: add requirements with IDs
   - ARCHITECTURE.md: reflect architectural changes (high-level only)
5. Remove feature from TODO.md
6. Run `scripts/coverage-report.sh` → save to REQS-REPORT-FINAL.md
7. Compare REQS-REPORT-ORIGINAL.md vs REQS-REPORT-FINAL.md → plan tests for uncovered requirements → rerun report

Notes:
- CLAUDE.md contains static instructions only
- REQUIREMENTS.md contains implemented requirements with IDs
- ARCHITECTURE.md contains architectural documentation
- TODO.md contains only active requirements or drafts
- Git history tracks requirement evolution

## Test Driven Development (TDD)

- When functionality is changed, tests and their comments should be updated to reflect the changes

## Requirements Tracking

Requirements use IDs in format `[REQ-XXX-N]` where:
- `XXX` = category
- `N` = sequence number

Each test should have a `Covers: REQ-XXX-N` comment referencing requirement IDs from REQUIREMENTS.md.
No `Covers: REQ-XXX-N` references should be in production code.

Run `scripts/coverage-report.sh` to check coverage. Output shows:
- All requirements defined in REQUIREMENTS.md
- Requirements covered by tests
- Uncovered requirements
