# OpenAI Pattern Map

This repo incorporates patterns from official OpenAI Codex content and turns them into workflow defaults, skills, and docs.

## Source Mapping

| Source | Workflow upgrade |
|--------|------------------|
| [Designing delightful frontends with GPT-5.4](https://developers.openai.com/blog/designing-delightful-frontends-with-gpt-5-4) | Stronger frontend brief, design principles, visual references, narrative structure, real content, and design-system adherence |
| [Building frontend UIs with Codex and Figma](https://developers.openai.com/blog/building-frontend-uis-with-codex-and-figma) | Bidirectional code-to-Figma and Figma-to-code guidance; encourage Figma MCP for design-led work |
| [Run long horizon tasks with Codex](https://developers.openai.com/blog/run-long-horizon-tasks-with-codex) | Milestone-based execution, durable project memory, and verification at each milestone |
| [Shell + Skills + Compaction](https://developers.openai.com/blog/skills-shell-tips) | Better skill descriptions, negative examples, reusable templates, artifact boundaries, and long-run-friendly execution patterns |
| [Testing Agent Skills Systematically with Evals](https://developers.openai.com/blog/eval-skills) | Prompt sets, deterministic checks, rubric grading, and explicit success definitions for workflow skills |
| [Supercharging Codex with JetBrains MCP at Skyscanner](https://developers.openai.com/blog/skyscanner-codex-jetbrains-mcp) | Prefer richer tool context and IDE feedback loops when available |
| [Build responsive front-end designs](https://developers.openai.com/codex/use-cases/frontend-designs) | Screenshot-driven UI implementation, design system reuse, and Playwright-backed visual iteration |

## Concrete Changes In This Repo

- `frontend-delight` skill for UI quality and visual direction
- `long-horizon-execution` skill for extended tasks
- `skill-evals` skill for testing workflow skills
- stronger frontend and long-run guidance in global `AGENTS.md`
- explicit browser verification and Figma round-trip documentation

## What We Took Literally

- skill descriptions should behave like routing logic, not marketing copy
- long tasks need durable artifacts and milestone verification
- frontend work needs stronger visual direction plus browser validation
- evals for skills should look like lightweight end-to-end tests

## What We Did Not Overfit

- we did not recreate blog-specific product setups that depend on APIs or hosted environments not owned by this repo
- we did not vendor upstream curated skills from `openai/skills`
- we did not force JetBrains-specific integration into the baseline, but we note the value of richer IDE context where available
