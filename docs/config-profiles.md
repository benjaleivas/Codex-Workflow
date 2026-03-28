# Config Profiles And Wrappers

These wrappers turn a few common Codex operating modes into explicit entrypoints.

## Included Wrappers

- `cdx`: balanced default with search
- `cdx-fast`: faster cross-project default using `gpt-5.4-mini` with `xhigh` reasoning
- `cdx-long`: long-horizon default using `gpt-5.4` with `xhigh` reasoning
- `cdx-ui`: UI and browser-debugging entrypoint with `js_repl`

## Why This Helps

Across projects, performance improves when you stop re-deciding the same launch posture every session.

These wrappers encode common modes:

- quick repo work
- deeper long-run work
- browser-based frontend verification

## Suggested Aliases

```bash
alias cdx="$HOME/.codex/workflow/cdx"
alias cdxfast="$HOME/.codex/workflow/cdx-fast"
alias cdxlong="$HOME/.codex/workflow/cdx-long"
alias cdxa="$HOME/.codex/workflow/cdxa"
alias cdxui="$HOME/.codex/workflow/cdx-ui"
alias cdxr="$HOME/.codex/workflow/cdx-review"
alias gitready="$HOME/.codex/workflow/git-ready"
```

## Optional Config Snippet

If you want to mirror these modes in `~/.codex/config.toml`, use a manual snippet like:

```toml
[profiles.fast]
model = "gpt-5.4-mini"
model_reasoning_effort = "xhigh"

[profiles.long]
model = "gpt-5.4"
model_reasoning_effort = "xhigh"
```

Then launch with:

```bash
codex -p fast
codex -p long
```
