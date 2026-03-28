# Browser Verification

This workflow intentionally points browser-heavy QA to the upstream curated skill catalog instead of reimplementing a local browser skill.

Relevant upstream sources:

- [openai/skills](https://github.com/openai/skills)
- [playwright-interactive](https://github.com/openai/skills/tree/main/skills/.curated/playwright-interactive)

## When To Use It

Use `playwright-interactive` when you need:

- persistent browser handles across multiple debugging iterations
- screenshot-backed verification for UI claims
- repeated reload-and-check loops while editing a local web app
- browser-based QA that is more involved than a one-off smoke test

## Important Upstream Requirements

From the upstream skill guidance:

- `js_repl` must be enabled
- start a new Codex session after enabling it so the tool list refreshes
- Playwright must be installed in the workspace you are debugging
- the upstream skill currently recommends running with `--sandbox danger-full-access` for this workflow

This repo's `cdxui` wrapper reflects those constraints:

```bash
cdxui
```

Equivalent command:

```bash
codex --search --enable js_repl --sandbox danger-full-access
```

## Typical Flow

1. Start your app or dev server.
2. Launch Codex with `cdxui`.
3. If needed, install the curated skill using the upstream `openai/skills` flow with `$skill-installer`.
4. Use `playwright-interactive` for iterative browser validation.
5. Finish with normal repo verification and review.
