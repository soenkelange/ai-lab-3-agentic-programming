# Lernpfade — Wähle deinen Einstieg

## Schnelle Navigation

| Profil | Zeit | Startpunkt |
|--------|------|-----------|
| **Ich will den Workshop-Standardpfad** | 2h | [Free-First 2h Path](two-hour-workshop-path.md) |
| **Ich bin neu bei Agenten** | 2h | [Pfad 1: Anfänger](#pfad-1-anfänger) |
| **Ich verstehe Modelle, will Tools lernen** | 3h | [Pfad 2: Foundations](#pfad-2-intermediate) |
| **Ich bin Architekt und will skalierbare Systeme** | 1 Tag | [Pfad 3: Full Workshop](../08-workshop-facilitator/half-day-agenda.md) |
| **Ich habe nur 30 Minuten** | 30min | [Ultra-Schnell](#ultra-schnell) |

---

## Ultra-Schnell (30 Minuten)

**Ziel:** Verstehen, *warum* Agenten anders sind.

1. [Was ist agentic Programming?](../01-agentic-foundations/model-vs-agent.md) — 10 min
2. [Diese eine Grafik](../01-agentic-foundations/architecture-stack.md#the-stack) — 5 min
3. [Agent vs. Framework](../01-agentic-foundations/agent-vs-framework.md) — 10 min
4. Diskussionsfrage: Was würde ich morgen mit Claude Code versuchen? — 5 min

---

## Pfad 1: Anfänger (2 Stunden + Hands-On)

**Zielgruppe:** Developer/Engineer, die Agenten von innen kennenlernen wollen.

### Blöcke

| # | Modul | Dauer | Ergebnis |
|---|-------|-------|------------|
| 1 | [Agentic Foundations](../01-agentic-foundations/) | 15 min | "Agenten machen X, nicht nur Y" verstanden |
| 2 | [Models 101](../02-models-and-inference/primer.md) | 20 min | "Provider vs. Runtime" Unterschied klar |
| 3 | [Agent Tools Landscape](../03-coding-agents-landscape/selection-matrix.md) | 25 min | Versteht, dass Claude Code ≠ Cursor ≠ Aider |
| 4 | [💻 Lab 1 Live](../07-hands-on-labs/lab-01-single-agent-ticket.md) | 45 min | *Ich habe einen echten Bug mit Claude Code gelöst* |
| 5 | [Checkpoint & Reflexion](../07-hands-on-labs/checkpoint-01.md) | 15 min | Validierung: Hab ich wirklich verstanden? |

### Setup (<5 Min)

```bash
# Option A: Kostenlos mit Anthropic + Claude Code
# → Brauchst nur ANTHROPIC_API_KEY
# → Download: https://claudeapi.com (free tier genügt)

# Option B: 100% Offline
brew install ollama
ollama pull qwen3.1:coder
# → Völlig kostenlos, läuft lokal
```

### Anschließend

- Probiere selbst ein echtes Ticket aus deinem Repo
- Oder: [Pfad 2](#pfad-2-intermediate) für tieferes Wissen

### Wenn du einen festen Workshop-Start brauchst

- Nutze stattdessen den [Free-First 2h Path](two-hour-workshop-path.md)
- Dieser Pfad ist die empfohlene Standardroute für den Workshop
- Er behandelt Regeln, Skills und Sicherheitsgrenzen vor Sub-Agents

---

## Pfad 2: Intermediate (3 Stunden + Deep Dives)

**Zielgruppe:** Architekten, Platform Engineers, ML Engineers.

### Blöcke

| # | Modul | Dauer | Fokus |
|---|-------|-------|--------|
| 1 | [Model vs. Agent Deep Dive](../01-agentic-foundations/model-vs-agent.md) | 15 min | Warum sind das unterschiedliche Dinge? |
| 2 | [Agent vs. Framework](../01-agentic-foundations/agent-vs-framework.md) | 10 min | Was ist austauschabar? |
| 3 | [Inference Layer Architektur](../02-models-and-inference/abstraction-layers-litellm.md) | 30 min | LiteLLM als Plattform-Layer |
| 4 | [MCP Fundamentals](../04-mcp-and-tooling/mcp-core-concepts.md) | 25 min | Das Rückgrat: MCP ist nicht optional |
| 5 | [💻 Lab 2: MCP Integration](../07-hands-on-labs/lab-02-mcp-integration.md) | 60 min | *Ich habe einen MCP Server geschrieben* |
| 6 | [Multi-Agent Patterns Intro](../06-multi-agent-architectures/swarm-patterns.md) | 20 min | Wie skaliert man auf > 1 Agent? |

### Fachlich kritisch

- Unbedingt verstehen: LiteLLM ist nicht optional
- Unbedingt verstehen: MCP ist nicht "ChatGPT Plugins 2.0"
- Experiment: Wechsele in einer App Claude → Ollama nur durch ENV-Variable

### Anschließend

- Entwirf einen agentic Workflow in deinem Projekt
- Oder: Ganz durcharbeiten mit **Pfad 3**

---

## Pfad 3: Advanced — Full Workshop (1 Tag + Capstone)

**Zielgruppe:** Alle oben + Lead Architects, die Systeme im Maßstab bauen.

### Morgens: Landschaft (3h)

- [Alle Foundations](../01-agentic-foundations/)
- [Alle Models & Inference](../02-models-and-inference/)
- [Agent Selection Matrix](../03-coding-agents-landscape/selection-matrix.md)
- [MCP Complete](../04-mcp-and-tooling/)
- Diskussion: Was ist unsere Constraints? (Kosten, Sicherheit, Vendor-Lock?)

### Mittags: Live Hands-On (2h)

- [Lab 1 gemeinsam](../07-hands-on-labs/lab-01-single-agent-ticket.md) (30 min)
- [Lab 2 in Breakouts](../07-hands-on-labs/lab-02-mcp-integration.md) (90 min)
- Peer Learning & Troubleshooting

### Nachmittags: Capstone (2-3h)

- [Lab 3 Final: Multi-Agent Pipeline](../07-hands-on-labs/lab-03-multi-agent-pipeline.md)
  - Echtes Ticket → 3+ Agent Workflow
  - Orchestrierungsdesign
  - Error Handling und Fallbacks
- Praesentation und Review in der Gruppe

### Danach

- Ihr seid bereit, agentic Systems in Production zu bauen
- [Failure Modes](../06-multi-agent-architectures/failure-modes.md) lesen für Prod-Ready
- Optional: Framework Deep-Dives (LangGraph, CrewAI, etc.)

---

## Welcher Weg passt zu mir?

<details>
<summary>Ich bin Developer, noch keine Agenten angefasst</summary>

→ **Pfad 1: Anfaenger**. Dann ein eigenes Ticket mit Claude Code.

</details>

<details>
<summary>Ich kenne Modelle & LLMs gut, will aber nicht zu viel Zeit investieren</summary>

→ **Pfad 2: Intermediate**. Kernkonzepte + ein MCP-Lab.

</details>

<details>
<summary>Ich muss ein agentic System in meiner Org deployen</summary>

→ **Pfad 3: Full Workshop** + [Failure Modes](../06-multi-agent-architectures/failure-modes.md) + lokale Demo mit deinem Stack.

</details>

<details>
<summary>Ich leite einen Workshop / Dojo für mein Team</summary>

→ [Workshop Facilitator Guide](../08-workshop-facilitator/) + Pfad 3 Struktur.

</details>

<details>
<summary>Ich will schnell eine Entscheidung treffen: Claude Code vs. Cursor vs. Pi?</summary>

→ [Selection Matrix](../03-coding-agents-landscape/selection-matrix.md) (5 min) + ein kurzer [Tool-Vergleich](../03-coding-agents-landscape/ide-agents.md) (10 min).

</details>

---

## Tipps für erfolgreiches Lernen

1. **Hands-On zuerst:** Theorie → sofort Lab. Nicht umgekehrt.
2. **Mit realem Code:** Nutze ein Ticket aus deinem Stack, nicht hypothetisch.
3. **Fehler sind Feature:** Agents werden manchmal irrational. Das ist normal. [Schau hier](../06-multi-agent-architectures/failure-modes.md).
4. **Community hilft:** [GitHub Discussions](https://github.com/...) fuer deine Fragen.
5. **Dokumentiere deine Learnings:** Ein kurzes ADR pro Lab ist Gold.

---

**Naechster Schritt:** Waehle oben deinen Pfad und starte mit dem ersten Link. Los geht's!
