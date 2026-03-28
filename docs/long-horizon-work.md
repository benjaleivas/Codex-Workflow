# Long-Horizon Work

This repo's long-run guidance is informed by:

- [Run long horizon tasks with Codex](https://developers.openai.com/blog/run-long-horizon-tasks-with-codex)
- [Shell + Skills + Compaction](https://developers.openai.com/blog/skills-shell-tips)

## Operating Principles

- optimize for staying coherent over time, not just answering the next turn
- externalize the plan into durable files when the task is large
- verify at milestones
- reuse tools and sessions when practical
- keep artifacts and status visible

## Practical Pattern

1. Write or update a milestone plan.
2. Execute one milestone at a time.
3. Verify after each milestone.
4. Record the current state in a durable location before pausing or handing off.

## Good Durable Artifacts

- implementation plans
- task trackers
- status notes
- generated outputs consumed by later steps

## Why This Matters

Long-running agent work fails when the agent loses the thread. Durable project memory and milestone checks reduce that risk substantially.
