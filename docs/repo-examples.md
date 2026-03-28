# Repo Examples

This repo includes two example repo-local `AGENTS.md` files that show how to specialize the global Codex baseline for different project shapes.

## Included Examples

- [Frontend app example](/Users/bleiva/Desktop/Codex-Workflow/examples/frontend-app/AGENTS.md)
- [Backend/data app example](/Users/bleiva/Desktop/Codex-Workflow/examples/backend-data-app/AGENTS.md)

## How To Use Them

Treat these as starting points, not universal templates.

Adapt them to:

- the repo's verification commands
- the repo's real design system or service boundaries
- the project's risk profile
- the kinds of tasks Codex will be asked to do most often

## Why These Matter

The global `~/.codex/AGENTS.md` should stay behavioral and cross-repo.

The repo-local `AGENTS.md` is where you make the workflow concrete:

- what counts as risky
- what must be verified
- what patterns Codex should reuse
- when UI verification or data-flow planning is required
