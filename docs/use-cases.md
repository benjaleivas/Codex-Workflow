# Codex Use Cases

This workflow repo is now explicitly shaped around official Codex use-case patterns from:

- [Codex use cases](https://developers.openai.com/codex/use-cases)
- [Build responsive front-end designs](https://developers.openai.com/codex/use-cases/frontend-designs)

## Routing Guide

Use this mapping when choosing how to start a task:

- frontend design or implementation from screenshots:
  use `frontend-delight`, `cdx-ui`, and `playwright-interactive`
- Figma-led implementation or code-to-canvas roundtrip:
  use Figma MCP plus the frontend workflow docs
- long implementation or refactor:
  use `long-horizon-execution` and `cdx-long`
- skill creation or refinement:
  use `skill-evals`
- standard repo coding work:
  use `cdx` or `cdx-fast` depending on depth needed

## Why This Matters

The use-case pages reinforce a practical point: Codex performs better when the task is framed as an explicit workflow, not just a generic prompt.
