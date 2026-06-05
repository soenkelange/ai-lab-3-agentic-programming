# Terminal Agents — CLI-Native Entwicklung

> ⏱️ 15 Minuten  
> 🎯 Outcome: Verstehen, warum Terminal Agents wichtig sind für Automation & CI/CD

---

## Die Verschiebung

GUI IDEs (Cursor, Windsurf) sind *großartig* für interaktive Entwicklung.

Aber **Terminal Agents** sind revolutionär für Automation:

```
Altes Denken:
  GitHub Issue created → Developer manuell arbeitet √

Neues Denken:
  GitHub Issue created → Webhook → Cloud Function → Terminal Agent
    → Work done automatisch → PR created → Done ✅ (Humans can sleep)
```

---

## Die Hauptakteure

| Agent | Typ | Best For | Kosten |
|-------|-----|----------|--------|
| **Claude Code** | Web UI + CLI | Alles | $0 (API costs) |
| **Pi Agent** | CLI + GUI (optional) | Multi-model, Memory | $0 (OSS) |
| **Aider** | CLI | Git-focused, einfach | $0 (OSS) |
| **OpenCode** | CLI | Open Source, lokal | $0 (OSS) |

## Use Case: CI/CD Pipeline mit Terminal Agent

```yaml
# .github/workflows/agent.yml
on:
  issues:
    types: [labeled]

jobs:
  solve-issue:
    if: contains(github.event.issue.labels.*.name, 'agent-solvable')
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run Pi Agent
        env:
          ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
        run: |
          pip install pi-agent
          pi solve "GitHub Issue: ${{ github.event.issue.body }}"
      - name: Create PR
        run: |
          git config user.name "Agent"
          git add -A
          git commit -m "Fix: $(git diff --cached --quiet || echo 'Implement feature')"
          gh pr create --fill
```

Das ist die "Feature Factory" in Action.

---

[← Zu Agent Landscape](selection-matrix.md) | [Weiter zu MCP →](../04-mcp-and-tooling/)
