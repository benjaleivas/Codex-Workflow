# Skill Evals

This workflow borrows directly from the guidance in [Testing Agent Skills Systematically with Evals](https://developers.openai.com/blog/eval-skills).

## Minimal Eval Loop

1. Define success before changing the skill.
2. Create a small prompt set:
   - prompts that should trigger the skill
   - prompts that should not trigger the skill
3. Add deterministic checks where possible.
4. Add a small rubric for style or convention quality.
5. Compare results across skill revisions.

## What To Check

- routing: did the agent choose the skill when it should?
- artifact creation: did it produce the required files or outputs?
- behavior: did it follow the intended workflow steps?
- quality: does the result meet the style or convention rubric?

## Keep It Small

The goal is not a giant benchmark suite. The goal is to catch the regressions that matter to your real workflow.
