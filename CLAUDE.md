Brief description of the project. Standard `Hello, World!` example.

# Project Files

| File | Purpose |
|------|---------|
| [REQUIREMENTS.md](REQUIREMENTS.md) | Implemented requirements with IDs |
| [ARCHITECTURE.md](ARCHITECTURE.md) | High-level architecture documentation |
| [TODO.md](TODO.md) | TODO section (ready to implement), Refinement section (ideas to research), Drafts (future context) |
| [scripts/coverage-report.sh](scripts/coverage-report.sh) | Reports which requirements are covered by tests |

# Workflows

Use slash commands:
- `/plan` — check TODO.md and get a recommendation
- `/dev` — implement the next TODO item (full TDD cycle)
- `/refine` — research Refinement items and convert to TODO requirements
- `/coverage` — show requirements coverage report

# Requirements Tracking

Requirements use IDs in format `[REQ-XXX-N]` where:
- `XXX` = category (e.g. CORE, AUTH, UI)
- `N` = sequence number

Each test must have a `Covers: REQ-XXX-N` comment. No `Covers:` references in production code.
