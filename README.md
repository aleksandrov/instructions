# Instructions Template

A project template for AI-assisted refinement and development that enforces traceability between requirements, code, and tests.

## Problem

When using AI coding assistants, it's easy to lose track of:
- What requirements exist and their current state
- Which requirements have test coverage
- How requirements evolved over time

## Solution

This template provides:
- **Structured requirements** in CLAUDE.md with trackable IDs (`[REQ-XXX-N]`)
- **Test-to-requirement linking** via `Covers: REQ-XXX-N` comments
- **Coverage reporting** to identify untested requirements

## How to install

1. Ask your coding agent to "apply instructions from [https://github.com/aleksandrov/instructions](https://github.com/aleksandrov/instructions)".
2. Review changes made in your repository.

## How to use

First of all you can write down draft ideas into `DRAFTS` section of (TODO.md)[TODO.md]. Ideas written here are not going to be implemented, but provide a context of potential changes which might be implemented in future. 

Template instructs CLAUDE to work in one of two modes:

### Refinement mode

You can briefly describe ideas which you want to be refined now into `REFINEMENT` section of [TODO.md](TODO.md) or copy them from `DRAFTS` section of [TODO.md](TODO.md).

Then ask agent to 'follow instructions'.

> Agent will do analysis and refine your ideas into structured list of requirements to implement in `TODO` section of [TODO.md](TODO.md). 
You can edit/add/remove them or ask agent to refine it more.
Final list of these requirements is an input for `Implementation mode` described below.

### Implementation mode

In this mode agent takes list of requirements from `TODO` section of [TODO.md](TODO.md) and does an implementation then clean up `TODO` section.
Implementation mode has preference so Agent will ignore `REQUIREMENTS` section until there are requirements to implement in `TODO` section. 

Just ask agent to 'follow instructions'.

> The assistant will follow the instructions defined in TODO.md/CLAUDE.md to implement the requirements. Implemented requirements will be automatically copied to CLAUDE.md

# Feedback

3. Let us know about your experience!
