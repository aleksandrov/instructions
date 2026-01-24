Brief description of the project. Standard `Hello, World!` as example.

# Funtionality

1. [REQ-CORE-1] Application should ask user name 
2. [REQ-CORE-2] Application should print message like `Hello, %username!`


# Architecture

TODO

# Refinement

1. Next features to refine are described in TODO.md (`Refinement` section)
2. If section is empty do check `TODO` section of [TODO.md](TODO.md)
3. Do research about:
   1. Best practices how to implement the feature
   2. What projects have similar functionality? Suggest what else could be easily implemented?
   3. What non-functional requirements similar projects usually have
4. Build a list of of functional and non-functional requirements and write it to `TODO` section of [TODO.md](TODO.md) 
5. Check if some requirements are already in CLAUDE.md `Functionality` section - don't produce dublicates
6. Clean up `Refinement` section of [TODO.md](TODO.md).
7. Don't update `Refinement` section of this document.

# Development

1. Next features to implement are described in TODO.md (`TODO` section)
2. Before start doing any changes, run requirements tracking report and save it into `REQS-REPORT-ORIGINAL.md`
3. Copy feature description to CLAUDE.md and give it requirement ID.
4. Implement new functionality.
5. Once feature is implemented:
   1.  CLAUDE.md `Functionality` section should be updated with new requirements
   2.  CLAUDE.md `Architecture` section should be updated to reflect architectural changes
   3.  Feature description should be removed from TODO.md
   4.  Run requirements tracking report and save it into `REQS-REPORT-FINAL.md`
   5.  Find differences between `REQS-REPORT-FINAL.md` and `REQS-REPORT-ORIGINAL.md`. Plan extra tests and rerun requirements tracking report to minimise amount of untested requirements.
6. CLAUDE.md should have high level functionality explanation only.
7. Dont add new sections into TODO.md: it contains ongoing requirements or drafts of requirements. 
8. Git history of CLAUDE.md and TODO.md should help to understand how requirements evolved over time.
9. Don't update `Development` section of this document.

## Test Driven Development (TDD)

- If functionality is changed tests and their comments should be updated to reflect the change was made.

## Requirements Tracking

Requirements use IDs in format `[REQ-XXX-N]` where:
- `XXX` = category
- `N` = sequence number

Each test should have a `Covers: REQ-XXX-N` comment referencing requirement IDs from this file.
No `Covers: REQ-XXX-N` references should in production code.

Run `scripts/coverage-report.sh` to check coverage. Output shows:
- All requirements defined in this file
- Requirements covered by tests
- Uncovered requirements
