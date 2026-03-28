# Example Repo AGENTS: Frontend App

This file extends the global Codex baseline in `~/.codex/AGENTS.md` for a frontend-heavy application repository.

## Scope And Precedence

Precedence in this repo:

1. `~/.codex/AGENTS.md`
2. This file
3. Repo docs and local runbooks

## Frontend Defaults

- Start with the existing design system, routing patterns, state model, and data-fetching patterns.
- Treat screenshots, Figma frames, and design notes as high-signal inputs when visuals matter.
- Do not introduce a parallel component system unless explicitly asked.
- Prefer realistic content and representative states over placeholder-heavy mock layouts.

## When To Plan First

Use a planning skill before editing when:

- a feature touches multiple screens or routes
- shared UI primitives may need to change
- responsiveness or interaction design is central to the task
- the task spans frontend plus backend or API changes

## UI Implementation Rules

- Reuse the repo's canonical primitives for buttons, inputs, typography, spacing, cards, icons, and layout wrappers.
- Match the target design through the repo's tokens and utilities instead of raw one-off styling where possible.
- Preserve accessibility semantics and keyboard behavior.
- If visual direction is underspecified, choose the simplest implementation that still fits the stated direction and note the assumption briefly.

## Browser Verification

For UI-heavy work, verify in a real browser before signoff.

Prefer:

- responsive checks at desktop and mobile widths
- verification of key states and interactions
- screenshot-backed comparison when design fidelity matters

Use `playwright-interactive` when available for iterative visual QA.

## Typical Verification

- typecheck
- unit or component tests
- browser-based verification for layout and interaction
- diff review for accidental style drift

## Handoff Standard

Summarize:

- user-visible changes
- what was verified
- any remaining visual or responsive risk
