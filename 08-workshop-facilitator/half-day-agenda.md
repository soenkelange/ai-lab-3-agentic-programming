# Workshop-Agenda (Standard 2.5 Stunden)

> **Für:** Trainer/Facilitator  
> **Mit:** Teilnehmer 5-50  
> **Ergebnis:** Teilnehmende haben einen laufenden Agent-Workflow und verstehen die Kernarchitektur

Siehe auch:
- [Facilitation-Skript 2.5h](facilitation-script-2.5h.md)
- [Worksheet Lab 1](../07-hands-on-labs/worksheet-lab-01-llm-chat.md)

---

## Überblick Zeitplan

| Phase | Dauer | Aktivität | Ergebnis |
|-------|-------|-----------|----------|
| **1. Grundlagen kompakt** | 35 min | Input + kurze Diskussion | Agent, Orchestrator und Framework sind getrennt |
| **2. Setup und Guardrails** | 15 min | Fail-fast-Checks + Sicherheitsrahmen | Alle koennen reproduzierbar starten |
| **3. Hands-On Kern** | 80 min | Lab 1 Kernpfad (LLM Chat) | Laufende Full-Stack-Chat-App |
| **4. Wrap-Up** | 20 min | Checkpoint, Reflexion, naechste Schritte | Transfer in eigenen Kontext |

**Insgesamt: 150 Minuten (2.5 Stunden)**

Optional:
- Bonus-Block 20-30 Minuten fuer RAG-Erweiterung (PDF/EPUB)

---

## Phase 1: Grundlagen kompakt (35 Min)

### Modul 1A: Agentic Programming (15 Min)

**Trainer-Fokus:** "Warum das anders ist"

- Slide 1: Model vs. Agent
  - Nutze [Slides aus 01-agentic-foundations/model-vs-agent.md]
  - Kernaussage: "Agenten führen Aktionen aus"
- Slide 2: Der Stack
  - Models -> Inference -> Agent -> Workflows
  - Zeigezeiger: "Diese Teile sind austauschabar"
- Slide 3: Beispiel (Ticket -> PR Workflow)

**Diskussion Prompt:** "Welche Aufgabe in eurem Projekt würde ein Agent automatisieren können?"  
(2 Min offene Discussionspause)

### Modul 1B: Die Werkzeuge (10 Min)

**Trainer-Fokus:** "Es gibt verschiedene Wege"

- Slide 1: IDE-Agents (Cursor, Copilot, Windsurf)
  - Dauer, einfach, interaktiv
- Slide 2: Terminal-Agents (Claude Code, Pi, Aider)
  - für Automation, CI/CD
- Slide 3: Selection Matrix
  - [Nutze 03-coding-agents-landscape/selection-matrix.md]

**Live Poll:** "Wer nutzt schon Cursor? CLI? GitHub Copilot?"

### Modul 1C: Terminologie und Guardrails (10 Min)

**Trainer Fokus:** "Sichere und wiederholbare Agent-Nutzung"

- Slide 1: Rules, Skills, Memory, Tool Policy
- Slide 2: Sicherheitsminimum vor jedem Agent-Run
- Slide 3: MCP als naechster Lernschritt nach dem Einstieg

---

## Phase 2: Setup und Guardrails (15 Min)

### Setup

Trainer und Teilnehmende pruefen gemeinsam:
1. Tooling-Checks (Docker, Compose, Node, Python)
2. Provider-Setup (Default: Google AI Studio)
3. Sicherheitsregeln fuer den Lab-Run

**Ergebnis:** Alle starten unter denselben Rahmenbedingungen in das Hands-on.

---

## Phase 3: Hands-On Lab 1 (80 Min)

### Setup (5 Min)

Alle Teilnehmer:
1. API Key (Google AI Studio Standard oder Alternative) vorbereitet
2. [Lab 1 Instructions](../07-hands-on-labs/lab-01-chat-with-docs-rag.md) öffnet
3. Ein echtes GitHub Issue wählt (oder aus diesem Repo)

### Execution (65 Min)

**Trainer-Rolle:** Support & Debugging

Teilnehmer arbeiten parallel. Trainer:
- Beantwortet Fragen
- Hilft bei Fehlern (API Key, Repo Setup)
- Gibt Hinweise wenn Agent steckenbleibt

"Agent macht nichts" -> Prompt spezifischer
"API Error" -> API Key check
"Repo zu gross" -> Smaller subset, oder 'read these files first'

**Paararbeit-Option:** Wenn Teilnehmer mag, 2er Teams.

### Checkpoint (10 Min)

Nach ~70 Min:
- [ ] Jeder hat einen laufenden Agent
- [ ] Jeder sieht output (Code oder PR)
- [ ] Jeder macht [Checkpoint 1](../07-hands-on-labs/checkpoint-01.md)

Wenn nicht fertig: Kein Problem. Teilnehmer kann nach dem Workshop fortfahren.

---

## Phase 4: Wrap-Up (20 Min)

### Reflexion (10 Min)

Trainer stellt Fragen:

- "Was war eure größte Überraschung?"
  - Jeder sagt 1-2 Sätze
- "Wo brauchtet ihr am meisten Support?"
  - Sammeln (API Setup, Prompt Clarification, etc.)
- "Was wollt ihr als nächstes probieren?"
  - Multi-Agent? MCP? Automation?

### Next Steps (7 Min)

- "Wenn ihr tiefer gehen wollt:"
  - Checkpoint 2: Vertiefung und Transfer
  - Modul 4: MCP Core Concepts
  - Modul 6: Multi-Agent Patterns
- "für euer Team:"
  - Repository clonen
  - Lernpfad 1 oder 2 wählen
  - Dojo-Modus: 1h/Woche zusammen
- "Support:"
  - Discussions im Repo
  - FAQ: faq.md

### Q&A (3 Min)

Offene Fragen.

---

## Facilitator Notes

### Wichtige Messaging

- ✅ "Agenten sind nicht Magic, aber sie sind Realität jetzt"
- ✅ "Das ist evolutionär, nicht revolutionär"
- ✅ "Ihr werdet diese Skills brauchen, egal ob ihr Agents selbst baut oder nicht"
- ❌ Nicht: "Alle Agenten sind genau gleich"
- ❌ Nicht: "Das eliminiert menschliche Entwicklung"

### Falls etwas schief geht

Agent antwortet nicht:
- Timeout? Warte nochmal 30s
- Prompt zu vage? Spezifischere Anfrage
- Token limit? Neuer Chat

Lab 1 zu lang:
- OK. Teilnehmer macht es nach Workshop.
- Nicht erzwingen.

Keine API Key:
- Ollama fallback zeigen (lokal)
- "Das kostet nix und läuft offline"

### Timing Management

- "Wir sind behind bei Landschaft?"
  - Skip Modul 1C (MCP) kurz
  - Sag: "Das ist Module 4. Schau es daheim an."
- "Lab läuft lange?"
  - OK. Das Lab ist Priorität.
  - Demo cut short.
- "Zu viel Q&A?"
  - "Gute Fragen. Mailen Sie mir. Jetzt weiter zum Lab."

---

## Material-Vorbereitung

### 1 Woche vorher

- [ ] Repository clonen & Lesen
- [ ] Claude Account Setup testen (oder Ollama)
- [ ] Eure Beispiel-Issues auswählen (2-3 gute Lab 1 Kandidaten)
- [ ] Slide Deck vorbereiten (oder skriptieren)

### Morgen des Workshops

- [ ] Testing Cloud/VPN (lädt Repos schnell?)
- [ ] Claude Code / Pi Agent sauberer Start
- [ ] Beispiel-Issue nochmal durchprobieren
- [ ] Projector/Screen-Share testet

### Während des Workshops

- [ ] Neues Terminal-fenster für Demo (nicht Teilnehmer Screen)
- [ ] Chat / Slack offen für Fragen
- [ ] Breakout Rooms (wenn mehr als 15 Teilnehmer)

---

## Optional: Erweiterung um RAG (20-30 Min)

Wenn die Gruppe schneller ist:

- Bonus-Challenge aus Lab 1 aktivieren (PDF/EPUB-RAG)
- Fokus auf Upload, Retrieval und Quellenhinweise

## Optional: Full-Day Workshop (8 Stunden)

Nutze die bestehende [Workshop-Agenda](half-day-agenda.md) als Basis und erweitere sie mit dem [Facilitation-Skript](facilitation-script-2.5h.md).

---

[← Zurück zur Hauptseite](../)
