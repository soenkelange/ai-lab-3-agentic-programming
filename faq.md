# FAQ — Häufige Fragen & Troubleshooting

## Setup & Umgebung

<details>
<summary><strong>F: Ich kriege "ANTHROPIC_API_KEY nicht gefunden"</strong></summary>

**Problem:** Die API Key ist nicht im ENV gesetzt.

**Lösung:**

```bash
# Option 1: For diese Session
export ANTHROPIC_API_KEY="sk-ant-..."

# Option 2: Dauerhaft (in ~/.zshrc oder ~/.bashrc)
echo 'export ANTHROPIC_API_KEY="sk-ant-..."' >> ~/.zshrc

# Option 3: In Python direkt setzen
import os
os.environ["ANTHROPIC_API_KEY"] = "sk-ant-..."
```

</details>

<details>
<summary><strong>F: Ollama startet nicht oder antwortet nicht</strong></summary>

**Problem:** `ollama serve` läuft, aber `localhost:11434` antwortet nicht.

**Lösung:**

```bash
# 1. Ollama Process prüfen
ps aux | grep ollama

# 2. Port prüfen
lsof -i :11434

# 3. Ollama neustarten
brew services restart ollama  # Mac
# oder einfach: ollama serve beenden und neu starten

# 4. Model prüfen ob geladen
ollama list

# 5. Test
curl http://localhost:11434/api/generate -d '{"model":"qwen3.1-coder","prompt":"hi"}'
```

</details>

<details>
<summary><strong>F: Claude Code web funktioniert aber Agent macht nichts</strong></summary>

**Problem:** Agent startet Loop nicht und wartet endlos.

**Bekannte Gründe:**
- Issue war zu unklar → spezifischere Anfrage
- Agent ist "thinking" (dauert länger) → warten
- Token limit reached → kürzere Prompts
- MCP Server nicht konfiguriert → einfacheres Issue ohne MCP

**Workaround:**

Starte einen neuen Chat, und:
- "Let's do this step-by-step"
- Gib kleinere Schritte vor

</details>

## Agent Behavior

<details>
<summary><strong>F: Agent macht immer die gleiche Sache, auch wenn das falsch ist</strong></summary>

**Problem:** Agent scheint im Loop fest zu hängen.

**Grund:** Agent hat keine Reflexion. Lui wiederholt das gleiche.

**Lösung:**

```
Agent: "Das hat nicht funktioniert. Versuch einen anderen Ansatz."
Agent: "Erkläre dein Reasoning, nicht direkt coden."
```

Oder komplett neuer Chat / neues Issue.

</details>

<details>
<summary><strong>F: Der Agent versteht meine Codebasis nicht</strong></summary>

**Problem:** Agent generiert Code, der nicht zur Architektur passt.

**Gründe:**
- Codebase ist zu komplex → Agent braucht Kontext
- Keine Architecture Decision Records (ADRs) → Agent rät

**Lösung:**

Gib dem Agent eine README oder ADR am Anfang:
- "Hier ist die Architektur: [paste ADR]"
- "Wir nutzen [Framework] als Basis"
- "Hier ist ein Beispiel von guter Practice: [code snippet]"

Agent wird dann viel besser.

</details>

<details>
<summary><strong>F: Agent erstellt schlechte Tests</strong></summary>

**Problem:** Tests sind oberflächlich oder ignorieren Edge Cases.

**Das ist normal.** Agenten folgen Patterns, auch wenn die nicht perfekt sind.

**Lösung:**

```
"Ich brauch Tests, die auch diese Cases abdecken: [erwähne Cases]"
"Füge auch negative Tests ein"
"Schreib Property-Based Tests (nicht nur happy path)"
```

</details>

## Kostenmanagement

<details>
<summary><strong>F: Wie teuer wird das wirklich?</strong></summary>

**Abschätzung:**

| Szenario | Kosten/Monat |
|----------|-------------|
| **Solo Learning** | $0 (Free Tier) bis $10 (mit einigen PRs) |
| **Team 5 Developer** | $50–100 (mit Standard-Nutzung) |
| **Team mit 100 Tickets/Monat** | $100–200 |
| **100% Lokal (Ollama)** | $0 (nur Strom ~$10/mo) |

**Sparen:**

- Nutze Ollama lokal für Test/Dev
- Nur komplexe Tasks mit Claude/GPT-5
- LiteLLM Routing zum Fallback nutzen

</details>

## MCP & Integration

<details>
<summary><strong>F: Ich will GitHub MCP, aber "connection refused"</strong></summary>

**Problem:** GitHub MCP Server läuft nicht oder ist nicht konfiguriert.

**Lösung für Claude Code:**

```
1. GitHub Token erstellen: settings/tokens
2. Export setzen: export GITHUB_TOKEN="ghp_..."
3. In Claude Code Code Mode starten
4. Chat: "Connect to GitHub please"
5. Claude Code konfiguriert MCP automatisch
```

</details>

<details>
<summary><strong>F: Ich will einen Custom MCP Server schreiben—wo anfang ich?</strong></summary>

→ [Lab 2: MCP Integration](../07-hands-on-labs/lab-02-mcp-integration.md) hat ein Beispiel.

Oder:
```
pip install mcp
# Dann: Siehe MCP Docs
# https://modelcontextprotocol.io
```

</details>

## Learning & Progression

<details>
<summary><strong>F: Ich verstehe Model vs Agent immer noch nicht</strong></summary>

Eine Analogie:

```
Model = Ein Verkehrskamera, die Szenen beschreibt
Agent = Ein Taxifahrer, der Szenen sieht UND fahrt zum Ziel
```

Der Model macht Ausgaben. Der Agent macht Entscheidungen.

→ [Lies nochmal](../01-agentic-foundations/model-vs-agent.md)

</details>

<details>
<summary><strong>F: Welcher Lernpfad passt zu mir?</strong></summary>

**Schneller Test:**

- "Ich war noch nie mit Agents" → [Lernpfad 1](../00-start-here/learning-paths.md#pfad-1-anfänger)
- "Ich kenne Modelle, will Agents" → [Lernpfad 2](../00-start-here/learning-paths.md#pfad-2-intermediate)
- "Ich muss ein System producen" → [Lernpfad 3](../00-start-here/learning-paths.md#pfad-3-advanced--full-workshop)

</details>

<details>
<summary><strong>F: Ich brauch mehr Hands-On</strong></summary>

→ Siehe `07-hands-on-labs/`

```
- Lab 1: Single Agent (Anfänger)
- Lab 2: MCP (Intermediate)
- Lab 3: Multi-Agent (Advanced)
```

Jedes Lab sollte ~2x versucht werden mit verschiedenen Issues.

</details>

## Tools & Wahl

<details>
<summary><strong>F: Soll ich Cursor oder Claude Code nehmen?</strong></summary>

**Die schnelle Entscheidung:**

| Frage | Antwort | Tool |
|-------|--------|------|
| Brauch ich GUI IDE? | Ja | Cursor |
| Brauch ich Web-only? | Ja | Claude Code |
| Brauch ich CLI? | Ja | Pi Agent |
| Budget? | $0 | Ollama + Aider |
| Budget? | $20 | Cursor |

→ Vollständige Matrix: [Selection Matrix](../03-coding-agents-landscape/selection-matrix.md)

</details>

<details>
<summary><strong>F: Sollte ich auf mein ganzes Team alle die gleiche IDE enforzen?</strong></summary>

**Nein.** Hybrid ist OK.

- Dev A: Nutzt Cursor
- Dev B: Nutzt Claude Code
- Dev C: Nutzt Pi Agent
- Alle editieren das gleiche Repo
- Kein Problem

Das ist eines der besten Features von agentic Programming—Tool-Flexibility.

</details>

## Weitere Fragen?

Nicht beantwortet oben? 

→ [GitHub Discussions](https://github.com/../discussions) (wird noch linked)

oder

→ Erstelle ein [GitHub Issue](https://github.com/../issues)

---

**Noch nicht beantwortet?** Bitte poste eine Frage. Das verbessert dieses FAQ für alle. Danke! 🙏
