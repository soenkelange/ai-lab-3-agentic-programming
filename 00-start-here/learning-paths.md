# Lernpfade — Wähle deinen Einstieg

## Schnelle Navigation

| Profil | Zeit | Startpunkt |
|--------|------|-----------|
| **Ich will den Workshop-Standardpfad** | 2.5h | [Workshop Standard 2.5h](#pfad-1-workshop-standard-25-stunden) |
| **Ich bin neu bei Agenten** | 2.5h | [Pfad 1: Workshop-Standard](#pfad-1-workshop-standard-25-stunden) |
| **Ich verstehe Models, will Tools lernen** | 3h | [Pfad 2: Foundations](#pfad-2-intermediate) |
| **Ich bin Architekt und will skalierbare Systeme** | 1 Tag | [Pfad 3: Full Workshop](../08-workshop-facilitator/half-day-agenda.md) |
| **Ich habe nur 30 Minuten** | 30min | [Ultra-Schnell](#ultra-schnell) |

---

## Ultra-Schnell (30 Minuten)

**Ziel:** Verstehen, *warum* Agenten anders sind.

1. [Was ist agentic Programming?](../01-agentic-foundations/model-vs-agent.md) — 10 min
2. [Selection Matrix](../03-coding-agents-landscape/selection-matrix.md) — 5 min
3. [Agent vs. Framework](../01-agentic-foundations/agent-vs-framework.md) — 10 min
4. Diskussionsfrage: Was würde ich morgen mit Claude Code versuchen? — 5 min

---

## Pfad 1: Workshop-Standard (2.5 Stunden)

**Zielgruppe:** Einsteiger, Nicht-Programmierer mit Technikinteresse und IT-Enthusiast:innen.

**Default-Setup:** Aider + Google AI Studio (Free Tier)

**Didaktisches Ziel:** Theorie kompakt, dann ein konkretes Hands-on, in dem ein Coding Agent eine Full-Stack LLM-Chat-App plant und baut.

### Blöcke

| # | Modul | Dauer | Ergebnis |
|---|-------|-------|------------|
| 1 | [Model vs. Agent](../01-agentic-foundations/model-vs-agent.md) | 15 min | Agentisches Grundverstaendnis ist gesetzt |
| 2 | [Agent vs. Framework](../01-agentic-foundations/agent-vs-framework.md) | 10 min | Coding Agent, Orchestrator und Framework sind sauber getrennt |
| 3 | [Selection Matrix](../03-coding-agents-landscape/selection-matrix.md) | 10 min | Teilnehmende verstehen agentenuebergreifende Wahlfreiheit |
| 4 | [Agent Terminology](../05-agentic-workflows/agent-terminology.md) | 10 min | Rules, Skills, Memory und Tool Policy sind eingeordnet |
| 5 | [Security Guardrails](../05-agentic-workflows/security-guardrails.md) | 5 min | Sicherheits-Minimum vor dem Hands-on ist klar |
| 6 | [Lab 1: LLM Chat + Bonus RAG](../07-hands-on-labs/lab-01-chat-with-docs-rag.md) | 95 min | Agent plant und implementiert eine lauffaehige Full-Stack-Chat-App |
| 7 | [Checkpoint 1](../07-hands-on-labs/checkpoint-01.md) | 5 min | Verifikation und kurze Reflexion |

### Setup (<10 Min)

```bash
# 1) Voraussetzungen pruefen
docker --version
docker compose version
node --version
python3 --version

# 2) Provider waehlen (Standard: Google AI Studio)
# Siehe: ../_shared/_provider-options.md
```

### Anschließend

- Probiere selbst ein echtes Ticket aus deinem Repo.
- Oder: [Pfad 2](#pfad-2-intermediate) fuer tieferes Wissen.

### Vertiefung: Rules und Skills (optional)

- Nutze [Workshop Rules und Skills](workshop-rules-and-skills.md), wenn du ein separates Governance-Training einbauen willst.
- Dieser Pfad ist eine Ergaenzung, nicht der Hauptpfad.

---

## Pfad 2: Intermediate (3 Stunden + Deep Dives)

**Zielgruppe:** Architekten, Platform Engineers, ML Engineers.

### Blöcke

| # | Modul | Dauer | Fokus |
|---|-------|-------|--------|
| 1 | [Model vs. Agent Deep Dive](../01-agentic-foundations/model-vs-agent.md) | 15 min | Warum sind das unterschiedliche Dinge? |
| 2 | [Agent vs. Framework](../01-agentic-foundations/agent-vs-framework.md) | 10 min | Was ist austauschbar? |
| 3 | [Inference Layer Architektur](../02-models-and-inference/abstraction-layers-litellm.md) | 30 min | LiteLLM als Plattform-Layer |
| 4 | [MCP Fundamentals](../04-mcp-and-tooling/mcp-core-concepts.md) | 25 min | Das Rückgrat: MCP ist nicht optional |
| 5 | [Checkpoint 2: Vertiefung und Transfer](../07-hands-on-labs/checkpoint-02.md) | 60 min | *Ich habe ein robustes Umsetzungs- und Verbesserungsbild* |
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

- [Lab 1 gemeinsam](../07-hands-on-labs/lab-01-chat-with-docs-rag.md) (60 min)
- [Checkpoint 2 in Breakouts](../07-hands-on-labs/checkpoint-02.md) (90 min)
- Peer Learning & Troubleshooting

### Nachmittags: Capstone (2-3h)

- [Swarm Patterns: Multi-Agent Pipeline](../06-multi-agent-architectures/swarm-patterns.md)
  - Echtes Ticket → 3+ Agent Workflow
  - Orchestrierungsdesign
  - Error Handling und Fallbacks
- Präsentation und Review in der Gruppe

### Danach

- Ihr seid bereit, agentic Systems in Production zu bauen
- [Failure Modes](../06-multi-agent-architectures/failure-modes.md) lesen für Prod-Ready
- Optional: Framework Deep-Dives (LangGraph, CrewAI, etc.)

---

## Welcher Weg passt zu mir?

<details>
<summary>Ich bin Developer, noch keine Agenten angefasst</summary>

→ **Pfad 1: Workshop-Standard**. Danach ein eigenes Ticket mit Claude Code.

</details>

<details>
<summary>Ich kenne Models & LLMs gut, will aber nicht zu viel Zeit investieren</summary>

→ **Pfad 2: Intermediate**. Kernkonzepte + ein MCP-Lab.

</details>

<details>
<summary>Ich muss ein agentic System in meiner Org deployen</summary>

→ **Pfad 3: Full Workshop** + [Failure Modes](../06-multi-agent-architectures/failure-modes.md) + lokale Demo mit deinem Stack.

</details>

<details>
<summary>Ich leite einen Workshop / Dojo für mein Team</summary>

→ [Workshop Agenda](../08-workshop-facilitator/half-day-agenda.md) + [Facilitation-Skript](../08-workshop-facilitator/facilitation-script-2.5h.md).

</details>

<details>
<summary>Ich will schnell eine Entscheidung treffen: Claude Code vs. Cursor vs. Pi?</summary>

→ [Selection Matrix](../03-coding-agents-landscape/selection-matrix.md) (5 min) + ein kurzer [Terminal-Agents Ueberblick](../03-coding-agents-landscape/terminal-agents.md) (10 min).

</details>

---

## Tipps für erfolgreiches Lernen

1. **Hands-On zuerst:** Theorie → sofort Lab. Nicht umgekehrt.
2. **Mit realem Code:** Nutze ein Ticket aus deinem Stack, nicht hypothetisch.
3. **Fehler sind Feature:** Agents werden manchmal irrational. Das ist normal. [Schau hier](../06-multi-agent-architectures/failure-modes.md).
4. **Community hilft:** [GitHub Discussions](https://github.com/...) für deine Fragen.
5. **Dokumentiere deine Learnings:** Ein kurzes ADR pro Lab ist Gold.

---

**Nächster Schritt:** Wähle oben deinen Pfad und starte mit dem ersten Link. Los geht's!
