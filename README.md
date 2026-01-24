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

The template instructs Claude to work in one of two modes based on priority:

### Mode Priority

1. **Development mode** takes priority if `TODO` section has items
2. **Refinement mode** runs only if `TODO` section is empty
3. **Drafts section** provides context but isn't processed

### Workflow

1. Write draft ideas in `Drafts` section of [TODO.md](TODO.md) (optional, for context)
2. Move ideas you want refined to `Refinement` section of [TODO.md](TODO.md)
3. Ask agent to 'follow instructions'
4. Agent refines ideas into structured requirements in `TODO` section
5. Edit/adjust requirements as needed
6. Ask agent to 'follow instructions' again
7. Agent implements requirements from `TODO` section and moves them to [CLAUDE.md](CLAUDE.md)

### Development Mode

The agent:
- Reads requirements from `TODO` section of [TODO.md](TODO.md)
- Implements them with test coverage
- Tracks requirement coverage before/after
- Moves implemented requirements to [CLAUDE.md](CLAUDE.md)
- Clears `TODO` section

### Refinement Mode

The agent:
- Reads ideas from `Refinement` section of [TODO.md](TODO.md)
- Researches best practises and similar projects
- Creates structured requirements
- Writes them to `TODO` section for implementation
- Clears `Refinement` section

# Feedback

Let us know about your experience!
