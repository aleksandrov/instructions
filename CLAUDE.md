Brief description of the project. Standard `Hello, World!` example.

# Functionality

1. [REQ-CORE-1] Application should ask for user's name
2. [REQ-CORE-2] Application should print message like `Hello, %username!`

# Architecture

TODO

# Refinement

1. Next features to refine are listed in [TODO.md](TODO.md) (`Refinement` section)
2. If that section is empty, check the `TODO` section of [TODO.md](TODO.md) instead
3. Research the following:
   1. Best practises for implementing the feature
   2. What projects have similar functionality? What else could be easily implemented?
   3. What non-functional requirements do similar projects usually have?
4. Build a list of functional and non-functional requirements and write them to the `TODO` section of [TODO.md](TODO.md)
5. Check if any requirements already exist in the `Functionality` section of [CLAUDE.md](CLAUDE.md) - don't produce duplicates
6. Clean up the `Refinement` section of [TODO.md](TODO.md)
7. Don't update the `Refinement` section of this document

# Development

1. Next features to implement are listed in [TODO.md](TODO.md) (`TODO` section)
2. Before starting any changes, run the requirements tracking report and save it to `REQS-REPORT-ORIGINAL.md`
3. Copy the feature description to [CLAUDE.md](CLAUDE.md) and assign it a requirement ID
4. Implement the new functionality
5. Once the feature is implemented:
   1. Update the `Functionality` section of [CLAUDE.md](CLAUDE.md) with new requirements
   2. Update the `Architecture` section of [CLAUDE.md](CLAUDE.md) to reflect architectural changes
   3. Remove the feature description from [TODO.md](TODO.md)
   4. Run the requirements tracking report and save it to `REQS-REPORT-FINAL.md`
   5. Find differences between `REQS-REPORT-FINAL.md` and `REQS-REPORT-ORIGINAL.md`. Plan additional tests and rerun the requirements tracking report to minimise the number of untested requirements
6. [CLAUDE.md](CLAUDE.md) should contain only high-level functionality explanations
7. Don't add new sections to [TODO.md](TODO.md) - it contains only ongoing requirements or requirement drafts
8. Git history of [CLAUDE.md](CLAUDE.md) and [TODO.md](TODO.md) should help understand how requirements evolved over time
9. Don't update the `Development` section of this document

## Test Driven Development (TDD)

- When functionality is changed, tests and their comments should be updated to reflect the changes

## Requirements Tracking

Requirements use IDs in format `[REQ-XXX-N]` where:
- `XXX` = category
- `N` = sequence number

Each test should have a `Covers: REQ-XXX-N` comment referencing requirement IDs from this file.
No `Covers: REQ-XXX-N` references should be in production code.

Run `scripts/coverage-report.sh` to check coverage. Output shows:
- All requirements defined in this file
- Requirements covered by tests
- Uncovered requirements
