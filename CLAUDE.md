Brief description of the project. Standard `Hello, World!` as example.

# Funtionality

1. [REQ-CORE-1] Application should ask user name 
2. [REQ-CORE-2] Application should print message like `Hello, %username!`


# Architecture

TODO

# Development

1. Next features to implement are described in TODO.md
2. Don't implement dratfs from TODO.md
3. Before start doing any changes, run requirements tracking report and save it into `REQS-REPORT-ORIGINAL.md`
4. Once feature is implemented:
   1.  CLAUDE.md `Functionality` section should be updated with new requirements
   2.  CLAUDE.md `Architecture` section should be updated to reflect architectural changes
   3.  Feature description should be removed from TODO.md
   4.  Run requirements tracking report and save it into `REQS-REPORT-FINAL.md`
   5.  Find differences between `REQS-REPORT-FINAL.md` and `REQS-REPORT-ORIGINAL.md`. Plan extra tests and rerun requirements tracking report to minimise amount of untested requirments.
5. CLAUDE.md should have high level functionality explanation only.
6. Git history of CLAUDE.md and TODO.md shoud help to understand how requirements evolved over time.

## Test Driven Development (TDD)

- Each test should have a `Covers: REQ-XXX-N` comment referencing requirement IDs from this file.
- If functionality is changed tests and their comments should be updated to reflect the change was made.

## Requirements Tracking

Requirements use IDs in format `[REQ-XXX-N]` where:
- `XXX` = category
- `N` = sequence number

Test comments reference these IDs with `Covers: REQ-XXX-N` in XML doc comments.

Run `scripts/coverage-report.sh` to check coverage. Output shows:
- All requirements defined in this file
- Requirements covered by tests
- Uncovered requirements
