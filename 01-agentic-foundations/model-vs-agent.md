# Model vs. Agent — Der zentrale Unterschied

> ⏱️ 10 Minuten  
> 🎯 Outcome: Verstehen, warum das zwei unterschiedliche Konzepte sind

---

## Die einfache Version

| Aspekt | Modell | Agent |
|--------|---------|-------|
| **Was ist es?** | Ein neuronales Netz, trainiert auf Text-Vorhersage | Ein System, das Modelle nutzt, um Aktionen in der echten Welt auszuführen |
| **Was es tut** | Generiert Text basierend auf Eingabe | Analysiert → Plant → Agiert → Überprüft → Iteriert |
| **I/O** | Text → Modell → neuer Text | Ziel → Agent → Aktionen (Dateien, Shell, APIs) |
| **Ohne Internet läuft es?** | Ja (lokal) | Nein (braucht Ziele + Tools) |
| **Training notwendig?** | Ja (pre-training; teuer) | Nein (nutzt ein Modell; Prompt-Engineering) |
| **Beispiel** | Claude 3.5 Sonnet, GPT-5, Qwen3 | Claude Code, Cursor IDE, Pi Agent |

---

## Warum das ein Paradigmen-Shift ist

### Vorher (2023): Model-Centric

```
Ingenieur → "Schreib einen API-Client für Stripe"
    ↓
Claude → "Here's Python code for Stripe integration"
    ↓
Ingenieur → kopiert, testet, deprecated Features beheben, ...
```

**Problem:** Das Modell ist passiv. Es generiert; der Mensch exekutiert.

### Jetzt (2026): Agent-Centric

```
Ingenieur → "Löse diesen Bug mit einem PR"
    ↓
Claude Code Agent:
    1. Liest das Issue
    2. Crawlt die Codebase
    3. Identifiziert Debug-Pfad
    4. Schreibt Test
    5. Implementiert Fix
    6. Lädt Tests
    7. Erstellt PR
    8. → Ingenieur reviewt diese konkrete PR statt Code zu
```

**Der Unterschied:** Der Agent war *handlungsfähig*.

---

## Was macht einen Agent "agentic"?

Ein Agent hat mindestens:

### 1. Goal / Mission
```
"Löse diese GitHub Issue"
"Refaktoriere dieses Modul für Performance"
"Schreibe die fehlende Dokumentation"
```

### 2. Perception (Umwelt verstehen)
- Dateien lesen
- Git-History analysieren
- Test-Output parsen
- APIs abfragen

### 3. Decision-Making (Was tun?)
- Hypothesen bilden ("Bug ist in Funktion X")
- Teststrategie wählen
- Implementierungsansatz entscheiden

### 4. Action (Aktionen ausführen)
- Dateien ändern
- Shell-Kommandos
- Git Commands
- Tests starten
- PRs erstellen
- andere Agenten delegieren

### 5. Reflection (Überprüfung)
- "Haben die Tests jetzt bestanden?"
- "Passt das Ergebnis zum Goal?"
- "Was habe ich gelernt, das beim nächsten Mal hilft?"

---

## Ein praktisches Beispiel

### Szenario: "Implementiere Dark Mode für die App"

**Modell-Ansatz (2023):**
```
Prompt: "Schreib CSS für Dark Mode"
Output: "Here's how to add dark mode to your React app..."
    → 200 Zeilen Boilerplate
    → Developer testet, merkt dass 10 Komponenten vergessen sind
    → Developer debuggt manuell
```

**Agent-Ansatz (2026):**
```
Goal: "Implementiere Dark Mode. Alle Tests müssen bestehen."

Agent:
  1. [Perception] Scannt Codebase: 127 CSS-Komponenten gefunden
  2. [Decision] Strategie: Tailwind @media + zustandsstore
  3. [Action]   Modifiziert alle Komponenten automatisch
  4. [Action]   Schreibt Accessibility Tests
  5. [Action]   Lädt Tests: 🎉 All passing
  6. [Action]   Erstellt PR mit Beschreibung
  7. [Reflection] "Alles ist grün. Habe mit @media(prefers-color-scheme) gearbeitet
```

Der Agent war **kollaborativ**, **persistent**, **verständig** — nicht nur generativ.

---

## Die technische Architektur

```
┌──────────────┐
│  Goal/Task   │
│ ("Fix Bug")  │
└──────┬───────┘
       │
       v
┌──────────────────┐      ┌──────────────┐
│   Agent Loop     │─────→│  Modell      │
│  - Plan          │      │ (Claude 3.5) │
│  - Decide        │      └──────────────┘
│  - Execute       │
│  - Reflect       │
└────────┬─────────┘
         │
    ┌────┴──────┬──────────┬────────┐
    v           v          v        v
  Files    Shell-Commands  Git    APIs
```

Ein Agent nutzt ein Modell, aber das Modell ist nur eine Komponente—nicht das Ganze.

---

## Warum das jetzt möglich ist

1. **Tool Use / Function Calling**  
   Modelle können jetzt sagen: "Ich brauche X und Y zu Analysieren, bitte ruf diese APIs auf."
   
2. **Bessere Reasoning**  
   Claude/GPT-5 können über mehrstufige Probleme nachdenken: Plan → Execute → Debug.
   
3. **MCP (Model Context Protocol)**  
   Standardisierte Schnittstelle: Agent sagt "Lese Dateien", System liefert Dateien — nicht im Prompt rumgehackt.

4. **Höhere Failure Tolerance**  
   Agenten können lernen: "Das funktionzte nicht, versuch anders" (Loops).

---

## Die wichtigsten Unterschiede für deine Karriere

| Skill (2023) | Skill (2026) |
|--------------|------------|
| "Prompt Engineering" | "Agent Design" |
| "Wie formuliere ich die Anfrage?" | "Wie definiere ich Goal, Perception, Actions?" |
| "Ein Prompt schreiben" | "Ein Multi-Agent Workflow bauen" |
| "LLM-APIs" | "Agent Frameworks (LangGraph, CrewAI)" |
| "Was gibt die API zurück?" | "Wie fehlertoleriert ist meine Pipeline?" |

---

## Dein erstes Aha-Moment erlebst du hier

→ [Lab 1: Single Agent Ticket](../07-hands-on-labs/lab-01-single-agent-ticket.md)

Dort wirst du sehen:
- Agent analysiert ein echtes Issue
- Agent sagt: "Ich brauch diese Dateien"
- Agent liest sie, denkt, handelt
- Agent lädt Tests
- Agent öffnet PR

**Das ist kein ChatGPT "write me code"-Moment. Das ist echte Autonomie.**

---

## Quick Reference Table: Model vs Agent vs Framework

| Frage | Modell | Agent | Framework |
|-------|--------|--------|-----------|
| **Wer führt aus?** | LLM | Agent (nutzt Modell) | Orchestrator (nutzt Agents) |
| **Beispiele** | Claude, GPT-5, Qwen | Claude Code, Pi, Aider | LangGraph, CrewAI |
| **Kann selbstständig Fehler fixen?** | Nein (braucht dich) | Ja (Retry-Loops) | Ja (explizite Strategien) |
| **Kostet Geld?** | Per Token | Die Inference + deine Infra | Deine Agents höchstens |
| **Betreibst du selbst?** | Nur lokal (Ollama) | Naja (Prompts selbst) | Ja (orchestrierst Agents) |

---

**Nächster Schritt:** [Agent vs. Framework verstehen](agent-vs-framework.md) (10 min)

