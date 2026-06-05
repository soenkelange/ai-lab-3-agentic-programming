# Half-Day Workshop Agenda (4 Stunden)

> **Für:** Trainer/Facilitator  
> **Mit:** Teilnehmer 5–50  
> **Ergebnis:** Teilnehmer haben working agent + verstehen Architektur

---

## Überblick Zeitplan

| Phase | Dauer | Aktivität | Ergebnis |
|-------|-------|-----------|----------|
| **1. Landschaft** | 60 min | Vortrag + Diskussion | Architektur verstanden |
| **2. Live Demo** | 30 min | Trainer zeigt Agent at work | "Das ist möglich!" |
| **3. Hands-On Lab** | 90 min | Teilnehmer machen Lab 1 | Erste erfolgreiche Agent-Aktion |
| **4. Wrap-Up** | 30 min | QA, Reflexion, Next Steps | Clarity + Motivation |

**Insgesamt: 4 Stunden** (plus Pausen nach Bedarf)

---

## Phase 1: Landschaft (60 Min)

### Modul 1A: Agentic Programming (20 Min)

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

### Modul 1B: Die Werkzeuge (20 Min)

**Trainer-Fokus:** "Es gibt verschiedene Wege"

- Slide 1: IDE-Agents (Cursor, Copilot, Windsurf)
  - Dauer, einfach, interaktiv
- Slide 2: Terminal-Agents (Claude Code, Pi, Aider)
  - für Automation, CI/CD
- Slide 3: Selection Matrix
  - [Nutze 03-coding-agents-landscape/selection-matrix.md]

**Live Poll:** "Wer nutzt schon Cursor? CLI? GitHub Copilot?"

### Modul 1C: MCP & Infrastruktur (20 Min)

**Trainer Fokus:** "Das ist das Fundament"

- Slide 1: MCP Überblick
  - Agent + Tools = MCP verbindet
- Slide 2: Praktisches Beispiel
  - Agent liest GH Issue via MCP
  - Agent schreibt zu Jira via MCP
- Slide 3: LiteLLM
  - Ein API, viele Models (Flexibility)

---

## Phase 2: Live Demo (30 Min)

### Setup

Trainer öffnet **Claude Code** (Web UI) oder **Pi CLI**.

**Demo-Task:** "Implementiere dunklen Modus für eine React App"

Trainer: Zeigt Step-by-Step
1. Claude Code öffnen
2. Codebase mit Repo uploaden
3. Issue/Anfrage eingeben
4. Agent beobachten wie er:
  - Codebase liest
  - Plan macht
  - Code schreibt
  - Tests runned

**Wichtig:** Nicht nur "schauen". **Intervenieren.**

Trainer stoppt und fragt:
- "Sieht ihr, wie der Agent hier dachte?"
- "Das ist iteration. Nicht einfach nur Copy/Paste."

**Ergebnis:** Teilnehmer sehen dass es möglich ist.

---

## Phase 3: Hands-On Lab 1 (90 Min)

### Setup (10 Min)

Alle Teilnehmer:
1. API Key (Anthropic oder Ollama) vorbereitet
2. [Lab 1 Instructions](../07-hands-on-labs/lab-01-single-agent-ticket.md) öffnet
3. Ein echtes GitHub Issue wählt (oder aus diesem Repo)

### Execution (70 Min)

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

## Phase 4: Wrap-Up (30 Min)

### Reflexion (15 Min)

Trainer stellt Fragen:

- "Was war eure größte Überraschung?"
  - Jeder sagt 1-2 Sätze
- "Wo brauchtet ihr am meisten Support?"
  - Sammeln (API Setup, Prompt Clarification, etc.)
- "Was wollt ihr als nächstes probieren?"
  - Multi-Agent? MCP? Automation?

### Next Steps (10 Min)

- "Wenn ihr tiefer gehen wollt:"
  - Lab 2: MCP Integration
  - Modul 4: MCP Core Concepts
  - Modul 6: Multi-Agent Patterns
- "für euer Team:"
  - Repository clonen
  - Lernpfad 1 oder 2 wählen
  - Dojo-Modus: 1h/Woche zusammen
- "Support:"
  - Discussions im Repo
  - FAQ: faq.md

### Q&A (5 Min)

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

## Optional: Full-Day Workshop (8 Stunden)

Einfach [08-workshop-facilitator/full-day-agenda.md](full-day-agenda.md) nutzen.

---

[← Zurück zur Hauptseite](../)
