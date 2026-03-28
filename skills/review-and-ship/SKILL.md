---
name: review-and-ship
description: Use after implementation to force a verification pass, regression review, shipping checklist, and explicit statement of any unverified risk.
---

# Review And Ship

Use this skill after meaningful changes and before commit or handoff.

## Review Pass

Check for:

- broken imports or call sites
- changed behavior without tests
- missing failure handling
- accidental scope creep
- security-sensitive regressions

## Verification Pass

Run the real repo checks where possible. If you cannot, say exactly what was skipped and why.

## Ship Pass

Summarize:

- what changed
- what was verified
- residual risk
- recommended next action

## Guardrails

- Findings first when the user asked for review.
- Do not confuse “looks correct” with “verified”.
- Do not omit unverified areas.
