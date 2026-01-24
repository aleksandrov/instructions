# Instructions Template

A project template for AI-assisted refinement and development that enforces traceability between requirements, code, and tests.

## Problem

When using AI coding assistants, it's easy to lose track of:
- What requirements exist and their current state
- Which requirements have test coverage
- How requirements evolved over time

## Solution

This template provides:
- **Structured requirements** in [CLAUDE.md](CLAUDE.md) with trackable IDs (`[REQ-XXX-N]`)
- **Test-to-requirement linking** via `Covers: REQ-XXX-N` comments
- **Coverage reporting** to identify untested requirements

## How to Install

1. Ask your coding agent to "apply instructions from [https://github.com/aleksandrov/instructions](https://github.com/aleksandrov/instructions)".
2. Review changes made in your repository.

## How to Use

First, you can write down draft ideas in the `DRAFTS` section of [TODO.md](TODO.md). Ideas written here will not be implemented immediately, but provide context for potential changes which might be implemented in future.

The template instructs Claude to work in one of two modes:

### Refinement Mode

You can briefly describe ideas you want refined in the `REFINEMENT` section of [TODO.md](TODO.md), or copy them from the `DRAFTS` section of [TODO.md](TODO.md).

Then ask the agent to 'follow instructions'.

> The agent will analyse and refine your ideas into a structured list of requirements to implement in the `TODO` section of [TODO.md](TODO.md). You can edit/add/remove them or ask the agent to refine them further. The final list of these requirements is the input for `Implementation mode` described below.

### Implementation Mode

In this mode, the agent takes the list of requirements from the `TODO` section of [TODO.md](TODO.md), implements them, and then cleans up the `TODO` section. Implementation mode has priority, so the agent will ignore the `REFINEMENT` section until there are no requirements to implement in the `TODO` section.

Just ask the agent to 'follow instructions'.

> The assistant will follow the instructions defined in [TODO.md](TODO.md) and [CLAUDE.md](CLAUDE.md) to implement the requirements. Implemented requirements will be automatically copied to [CLAUDE.md](CLAUDE.md).

# Feedback

Let us know about your experience!
