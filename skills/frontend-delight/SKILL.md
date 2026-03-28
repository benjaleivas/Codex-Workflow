---
name: frontend-delight
description: Use for frontend tasks that need stronger design direction, visual ambition, design-system adherence, and screenshot or browser-based verification.
---

# Frontend Delight

Use this skill when Codex is asked to build or refine UI and the default output risks becoming generic.

## Goal

Steer the model toward polished, intentional frontend work that is grounded in the repo's patterns and verified visually.

## Workflow

1. Start from a design brief.
2. Collect visual references when available.
3. Translate the target into the repo's design system and component layer.
4. Build the UI around a clear narrative and hierarchy, not a flat component dump.
5. Use real content where possible.
6. Verify visually with browser tooling when the result depends on layout, spacing, motion, or feel.

## Prompt Ingredients

Include as many of these as the task supports:

- visual direction or design principles
- screenshots, Figma frames, or mood references
- explicit component and token reuse requirements
- responsive requirements
- interaction states that must be represented
- validation criteria for visual fidelity

## Guardrails

- Do not invent a parallel design system.
- Do not default to generic SaaS layouts if the prompt implies a stronger creative direction.
- Do not sign off on UI quality from code inspection alone when visuals are central.
- If the task is ambiguous, choose the simplest implementation that still fits the design direction and note the assumption briefly.
