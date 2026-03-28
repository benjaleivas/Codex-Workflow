# Terminal Setup

Add these aliases to `~/.zshrc` or your shell profile if you want a shorter Codex loop:

```bash
alias cdx="$HOME/.codex/workflow/cdx"
alias cdxa="$HOME/.codex/workflow/cdxa"
alias cdxui="$HOME/.codex/workflow/cdx-ui"
alias cdxr="$HOME/.codex/workflow/cdx-review"
alias gitready="$HOME/.codex/workflow/git-ready"
```

Then reload your shell:

```bash
source ~/.zshrc
```

Recommended use:

```bash
cdx
cdxa
cdxui
cdxr
gitready
```

`cdxui` is the UI-debugging entrypoint. It starts Codex with `js_repl` enabled and `danger-full-access` sandbox mode so the curated upstream `playwright-interactive` skill can be used in the session when needed.
