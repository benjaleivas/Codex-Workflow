# IDE And MCP Context

This guidance is informed by [Supercharging Codex with JetBrains MCP at Skyscanner](https://developers.openai.com/blog/skyscanner-codex-jetbrains-mcp).

## Core Idea

Codex performs better when it has access to the same feedback loops human developers use:

- editor diagnostics
- compile and type feedback
- test runners
- symbol and file context

## Cross-Project Rule

When richer IDE or MCP context is available:

- use it early, not only after a failure
- treat diagnostics as part of normal verification
- prefer tool-grounded feedback to unsupported assumptions about APIs or code structure

## Practical Takeaway

This workflow repo does not force a JetBrains-specific integration, but it treats richer tool context as a first-class performance improvement whenever available.
