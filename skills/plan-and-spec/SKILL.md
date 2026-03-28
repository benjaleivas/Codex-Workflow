---
name: plan-and-spec
description: Use for non-trivial implementation work to force a decision-complete plan, explicit interfaces, edge cases, and verification before code changes begin.
---

# Plan And Spec

Use this skill when the task is not a tight single-file fix.

## Goal

Produce a plan that is concrete enough to implement without hidden design decisions.

## Workflow

1. Ground in the repository.
2. Define success criteria and non-goals.
3. Identify affected interfaces, data flow, and user-visible behavior.
4. Call out failure modes and edge cases.
5. Lock down a verification strategy before editing.

## Output Shape

Keep the plan concise but decision-complete:

- goal
- constraints
- chosen approach
- interfaces and behavior changes
- edge cases
- verification plan

## Guardrails

- Do not jump to implementation before the plan is stable.
- Do not leave type, API, or contract decisions implicit.
- Do not pad the plan with trivial steps.
