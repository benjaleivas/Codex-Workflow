---
name: skill-evals
description: Use when creating or refining a skill so it can be tested with explicit success criteria, targeted prompts, deterministic checks, and rubric-based grading over time.
---

# Skill Evals

Use this skill when a workflow skill is becoming important enough that you need to measure whether edits improve it.

## Goal

Turn a skill from a bundle of instructions into something you can test, score, and improve over time.

## Workflow

1. Define success before editing the skill.
2. Write a small prompt set that should trigger the skill and another that should not.
3. Add lightweight deterministic checks where possible.
4. Add a small rubric for qualitative judgment where deterministic checks are insufficient.
5. Keep the eval set small and focused on must-pass behavior.

## Success Categories

Use a mix of:

- routing checks
- artifact checks
- behavior checks
- style or convention rubric checks

## Guardrails

- Avoid vague “feels better” evaluation.
- Do not create giant eval suites before the skill stabilizes.
- Focus first on regressions that matter to actual workflow outcomes.
