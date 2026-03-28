---
name: long-horizon-execution
description: Use for tasks that may run for a long time or span many milestones. Focuses on durable project memory, milestone verification, and maintaining coherence over extended runs.
---

# Long Horizon Execution

Use this skill when a task is large enough that success depends on staying coherent over time, not just solving one step.

## Goal

Keep Codex on task across long runs by externalizing the plan, verifying at milestones, and reducing reliance on chat history.

## Workflow

1. Define the target outcome and the completion criteria.
2. Break the work into milestones with explicit verification at each step.
3. Create or update durable artifacts for project memory when helpful.
4. Execute one milestone at a time.
5. Verify before advancing to the next milestone.
6. Record unresolved risks and next steps in a stable location.

## Durable Memory

Prefer durable project memory over conversational memory:

- plan docs
- status docs
- TODO or tracker files
- generated artifacts that later steps consume

## Guardrails

- Do not defer all verification to the end.
- Do not let the plan live only in chat when the task is likely to outlast the session context.
- If a task needs long-running UI or shell work, reuse existing sessions and artifacts instead of restarting everything by default.
