# Codex Workflow Baseline

This file is meant to be installed as `~/.codex/AGENTS.md`.

It defines a stronger workflow baseline for Codex sessions across repositories while remaining compatible with Codex's actual feature set.

## Core Behavior

- Plan before significant execution.
- Search before creating new abstractions.
- Verify after meaningful edits.
- Review likely regressions before shipping.
- Keep the workflow Codex-native. Do not assume Claude slash commands, hooks, or settings.

## Default Session Posture

On a new task:

1. Classify the task.
2. If it is non-trivial, gather context and produce a decision-complete plan before editing.
3. Lock down the verification approach before implementation.
4. Implement pragmatically, matching repo conventions.
5. Verify with repo-native commands.
6. Review the diff for regressions and hidden scope creep.

## Task Classification

Treat as non-trivial if any of these are true:

- more than one file is likely to change
- the request affects user-facing behavior
- the request touches auth, persistence, APIs, or infra
- the repo has multiple subsystems and the change crosses boundaries
- the right implementation is not obvious after a short read

For non-trivial work, use the smallest relevant planning skill before editing.

## Search Before Build

Before creating a new utility, wrapper, dependency pattern, or workflow helper:

- inspect the repo with `rg`
- read the nearest docs
- look for existing scripts, tests, and conventions

Do not invent repo infrastructure when the repo already has a pattern.

## Verification Standard

After edits:

- run the repo's real verification commands when they exist
- otherwise run the narrowest check that meaningfully validates the change
- inspect the diff for unintended edits
- state what you could not verify

Never claim something is done if the relevant verification was skipped.

## Review Standard

Before handing work back, check for:

- broken call sites
- missing imports
- changed behavior without matching tests
- error handling regressions
- security-sensitive exposure
- edits that touch unrelated files

If the user asks for review, findings come first.

## Skills

Prefer installed skills when they clearly fit:

- `planning-workflow`
- `verification-loop`
- `search-first`
- `security-review`
- `repo-pattern-extraction`
- `plan-and-spec`
- `review-and-ship`

If the environment has curated upstream skills from `openai/skills`, use them when they are the best fit instead of recreating the workflow locally.

In particular:

- use `playwright-interactive` for persistent browser-based QA, UI debugging, and screenshot-backed verification

Use the minimal set that covers the task.

## Git Behavior

- Verify the repo before commit or push.
- Prefer focused staging.
- Do not push unless asked.
- Keep commit messages intentional and scoped.
- Do not rewrite user work unless explicitly requested.

## Non-Goals

This baseline does not define:

- repo-specific architecture
- project-specific commands
- app-specific review criteria
- hidden memory systems

Those belong in the target repository.
