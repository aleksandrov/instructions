# Instructions Template

A project template for AI-assisted development that enforces traceability between requirements, code, and tests.

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
- **Change workflow** that maintains traceability through TODO.md and git history

## How to use

1. Clone this repo.
2. Add/modify you requirements to `TODO.md`
3. Ask your AI coding assistant: "Implement requirements `TODO.md`"

> The assistant will follow the instructions defined in TODO.md/CLAUDE.md to implement the requirements. Implemented requirements will be automatically copied to CLAUDE.md

3. Let us know about your experience!
