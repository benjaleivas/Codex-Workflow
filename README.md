# Codex Workflow

A structured local workflow for Codex that mirrors the discipline of a mature Claude Code setup without depending on Claude-only features.

It is built around the surfaces Codex actually supports today:

- global `~/.codex/AGENTS.md`
- custom skills in `~/.codex/skills/`
- terminal helper scripts
- explicit verification and review loops
- optional upstream curated skills from [openai/skills](https://github.com/openai/skills)

## What This Repo Gives You

1. Plan-first global instructions for Codex.
2. Reusable custom skills for planning and shipping.
3. Shell wrappers for a faster terminal workflow.
4. Install and uninstall scripts that preserve your current `~/.codex` state.
5. A documented path for persistent browser QA using the curated `playwright-interactive` skill.
6. Opinionated patterns distilled from recent OpenAI Codex workflow posts.

## Philosophy

This repo intentionally does **not** try to recreate Claude-specific primitives such as slash commands, lifecycle hooks, or Claude settings schemas.

Instead, it ports the behavior:

- non-trivial work starts with a plan
- implementation is followed by real verification
- review happens before shipping
- reusable behavior lives in skills and shell helpers

## Install

```bash
cd /Users/bleiva/Desktop/Codex-Workflow
./install.sh
```

The installer:

- backs up an existing `~/.codex/AGENTS.md` if needed
- symlinks this repo's `AGENTS.md` into `~/.codex/AGENTS.md`
- symlinks the workflow skills into `~/.codex/skills/`
- symlinks helper scripts into `~/.codex/workflow/`

It does **not** overwrite your existing `~/.codex/config.toml`, auth, plugins, sessions, or curated skills.

## Terminal Usage

After install, these wrappers are available under `~/.codex/workflow/`:

```bash
~/.codex/workflow/cdx
~/.codex/workflow/cdxa
~/.codex/workflow/cdx-ui
~/.codex/workflow/cdx-review
~/.codex/workflow/git-ready
```

Recommended shell aliases:

```bash
alias cdx="$HOME/.codex/workflow/cdx"
alias cdxa="$HOME/.codex/workflow/cdxa"
alias cdxui="$HOME/.codex/workflow/cdx-ui"
alias cdxr="$HOME/.codex/workflow/cdx-review"
alias gitready="$HOME/.codex/workflow/git-ready"
```

See [`docs/terminal-setup.md`](/Users/bleiva/Desktop/Codex-Workflow/docs/terminal-setup.md).

## Session Loop

Quick fix:

```bash
cdx
# make the change
gitready
```

Non-trivial work:

```bash
cdx
# ask Codex to produce a plan first
# implement
gitready
cdxr
```

UI-heavy work:

```bash
cdxui
# use the curated playwright-interactive skill when you need persistent browser QA
```

## Included Skills

- `plan-and-spec`
- `frontend-delight`
- `long-horizon-execution`
- `review-and-ship`
- `skill-evals`

These are custom workflow overlays that complement the curated skills already installed in `~/.codex/skills/`.

See [`docs/openai-patterns.md`](/Users/bleiva/Desktop/Codex-Workflow/docs/openai-patterns.md) for the source-to-workflow mapping.
See [`docs/repo-examples.md`](/Users/bleiva/Desktop/Codex-Workflow/docs/repo-examples.md) for example repo-local `AGENTS.md` files.

## Upstream Skills

This repo is designed to work well with the upstream [openai/skills](https://github.com/openai/skills) catalog.

Two especially relevant references:

- [openai/skills](https://github.com/openai/skills)
- [playwright-interactive](https://github.com/openai/skills/tree/main/skills/.curated/playwright-interactive)

Per the upstream catalog, curated skills can be installed from inside Codex with `$skill-installer`, then picked up after restarting Codex. This workflow repo does not vendor those curated skills; it documents how to use them where they materially improve the workflow.

For browser-heavy debugging, `playwright-interactive` is the right fit because it uses a persistent `js_repl` session for iterative UI debugging and verification. See [`docs/browser-verification.md`](/Users/bleiva/Desktop/Codex-Workflow/docs/browser-verification.md).

For Figma-backed frontend work, use the Figma MCP flow when available and treat the design-to-code loop as bidirectional: design context into code, then running UI back into Figma for comparison and refinement. See [`docs/frontend-workflow.md`](/Users/bleiva/Desktop/Codex-Workflow/docs/frontend-workflow.md).

## Uninstall

```bash
./uninstall.sh
```

This removes the symlinks created by `install.sh` and restores the backed-up `AGENTS.md` when available.
