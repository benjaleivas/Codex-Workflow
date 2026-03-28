# Example Repo AGENTS: Backend Or Data App

This file extends the global Codex baseline in `~/.codex/AGENTS.md` for a backend-heavy, data-heavy, or ingestion-oriented repository.

## Scope And Precedence

Precedence in this repo:

1. `~/.codex/AGENTS.md`
2. This file
3. Repo docs and local runbooks

## Backend And Data Defaults

- Understand the data flow before changing implementation.
- Prefer explicit interfaces, schemas, and contracts over inferred behavior.
- Be careful with auth, persistence, migrations, rate limits, idempotency, retries, and external APIs.
- Avoid changing production-facing config, secrets handling, or schema behavior without deliberate verification.

## When To Plan First

Use a planning skill before editing when:

- a change touches schemas, migrations, queues, storage, or APIs
- the task spans multiple services or pipelines
- correctness depends on ordering, retries, or failure handling
- the task will likely require staged rollout or backfill logic

## Implementation Rules

- Follow the repo's existing patterns for logging, retries, validation, and error handling.
- Make data contracts explicit.
- Call out assumptions that affect compatibility or correctness.
- Keep side effects easy to reason about.

## Verification

Prefer verification that exercises the real behavior:

- unit tests for logic branches
- integration tests for service boundaries
- migration or schema validation where relevant
- dry runs, fixtures, or testing modes for ingestion tasks
- targeted checks for retries, idempotency, and failure paths

If the work is long-running or multi-stage, verify at each milestone rather than waiting until the end.

## Durable Project Memory

For complex backend or data work, persist the active plan and status in repo-visible files when useful:

- implementation plans
- migration notes
- backfill or rollout checklists
- generated reports consumed by later steps

## Handoff Standard

Summarize:

- behavior changes
- interface or schema implications
- what was verified
- any unverified operational or migration risk
