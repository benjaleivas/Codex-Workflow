# Frontend Workflow

This workflow combines three official Codex patterns:

- [Designing delightful frontends with GPT-5.4](https://developers.openai.com/blog/designing-delightful-frontends-with-gpt-5-4)
- [Building frontend UIs with Codex and Figma](https://developers.openai.com/blog/building-frontend-uis-with-codex-and-figma)
- [Build responsive front-end designs](https://developers.openai.com/codex/use-cases/frontend-designs)

## Core Principles

1. Start with a design brief, not just a component request.
2. Use screenshots, Figma frames, or mood references when visuals matter.
3. Translate the target into the repo's real design system.
4. Structure the page as a narrative with hierarchy and intent.
5. Ground the UI in realistic content.
6. Use real browser verification before signoff.

## Recommended Flow

1. Gather the brief:
   - visual direction
   - key states
   - responsive requirements
   - component and token reuse constraints
2. Build against the existing component layer.
3. If Figma is the source of truth, use Figma MCP to extract design context.
4. If the running app is the source of truth, generate or update a Figma file from the live UI when needed.
5. Use `playwright-interactive` for screenshot-backed verification and iteration.

## Prompt Pattern

Ask for:

- design-system reuse
- close match to spacing, layout, hierarchy, and responsive behavior
- the simplest assumption when a screenshot detail is ambiguous
- Playwright-based visual comparison when screenshots are provided

## When To Use Figma

Use Figma MCP when:

- the task starts from a design file
- the team needs code-to-canvas round-tripping
- you need to compare current implementation against a design artifact in the same workflow
