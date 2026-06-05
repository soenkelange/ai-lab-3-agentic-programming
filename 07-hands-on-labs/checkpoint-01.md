# Checkpoint 1: Wart mal, was habe ich mitgenommen?

> Nach Lab 1 (Single Agent Ticket)  
> ⏱️ 10 Minuten Self-Assessment  
> 🎯 Ziel: Validieren, dass du die Konzepte verstanden hast

---

## Selbst-Check: Konzepte

<details open>
<summary><strong>1. Ich kann erklären, was ein Agent ist (und was nicht)</strong></summary>

Teste dich:

**Frage:** "Was ist der Unterschied zwischen einem Model (Claude) und einem Agent (Claude Code)?"

**Du solltest antworten können:**
- Ein Model generiert Text basierend auf Input
- Ein Agent nutzt ein Model, um Ziele aktiv zu verfolgen (Dateien lesen, Kommandos ausführen, etc.)
- Agent = Model + Tools + Feedback-Loops

✅ **Wenn ja, hast du verstanden.**
❌ **Wenn nein, geh nochmal zu** [Module 1: Model vs Agent](../01-agentic-foundations/model-vs-agent.md)

</details>

<details>
<summary><strong>2. Ich kann eine Agent-IDE von einer anderen unterscheiden</strong></summary>

**Frage:** "Wenn ich zwischen Cursor und Claude Code wählen müsste, welche Fragen würde ich stellen?"

**Du solltest antworten können:**
- Ist mir GUI oder CLI wichtiger?
- Will ich ein freies Tool oder $ bezahlen?
- Will ich Model-Flexibilität (LiteLLM)?
- Ist Team-Nutzung geplant?

✅ **Wenn ja, zurück zu** [Lab 1](../07-hands-on-labs/lab-01-single-agent-ticket.md) und probiere ein anderes Tool.
❌ **Wenn nein, siehe** [Module 3: Agent Selection](../03-coding-agents-landscape/selection-matrix.md)

</details>

<details>
<summary><strong>3. Ich verstehe, warum ich Provider vs. Inference Runtime unterscheide</strong></summary>

**Frage:** "Warum ist LiteLLM wichtig, wenn ich Claude nutze?"

**Du solltest antworten können:**
- LiteLLM ermöglicht einfache Provider-Wechsel
- Heute Claude, morgen Ollama? Eine Env-Variable.
- Das ist strategisch für Long-Term Projekte

✅ **Wenn ja, super.**
❌ **Wenn nein, siehe** [Module 2: Inference Layer](../02-models-and-inference/abstraction-layers-litellm.md)

</details>

---

## Hands-On-Check: Hast du's gemacht?

### Lab 1 Deliverables

Wenn du Lab 1 gemacht hast, hast du:

- [ ] Ein echtes Issue identifiziert
- [ ] Claude Code (oder Pi) gestartet
- [ ] Den Agenten dabei beobachtet, wie er:
  - [ ] Das Issue analysiert
  - [ ] Codebase verstanden
  - [ ] Plan gemacht
  - [ ] Code geschrieben oder Text generiert
  - [ ] Tests geladen (falls relevant)
- [ ] PR/Changes submitted
- [ ] Die Qualität reviewed

**Wenn Häkchen >= 7:** Du hast die Essenz verstanden ✅

**Wenn Häkchen < 7:** Gehe nochmal zu [Lab 1](lab-01-single-agent-ticket.md), probiere es mit einem anderen Issue.

---

## Reflexion: Was war überraschend?

<details>
<summary>Was war deine größte Überraschung?</summary>

Beispiele:
- "Der Agent verstand meinen Code besser als ich gedacht"
- "Er bereitete sich aufTests vor, die es noch nicht gab"
- "Die Planning-Phase war länger als erwartet"
- "Das Output war Quality, aber unvollständig"

Schreib deine Beobachtung auf (mindestens 2-3 Sätze). Das hilft dir später, dich an den Aha-Moment zu erinnern.

</details>

---

## Nächste Entscheidung

Basierend auf deinem Lab 1 Ergebnis, wähle:

<details>
<summary>✅ Es funktionierte exzellent</summary>

→ Gehen zu [Lab 3: Multi-Agent Pipeline](../07-hands-on-labs/lab-03-multi-agent-pipeline.md)

Das zeigt dir, wie man mehrere Agenten orchestriert = echte Skalierung.

</details>

<details>
<summary>⚠️ Es funktionierte, aber mit Friktionen</summary>

→ Gehe zu [Module 4: MCP Fundamentals](../04-mcp-and-tooling/mcp-core-concepts.md) + [Lab 2](../07-hands-on-labs/lab-02-mcp-integration.md)

MCP gibt dem Agent bessere Tools = weniger Friktionen.

</details>

<details>
<summary>❌ Nicht optimal / nicht fertig</summary>

→ Versuche [Lab 1 nochmal mit anderem Issue](lab-01-single-agent-ticket.md)

Vielleicht war das erste Issue zu komplex. Find etwas Kleineres und probiere nochmal.

→ **Oder**: [Lies FAQ](../faq.md) — "Warum funktionierte das nicht?"

</details>

---

## Zusammenfassung

Du hast jetzt:

✅ Verstanden, was Agenten sind (Model vs. Agent)  
✅ Gesehen, wie ein Agent eine echte Aufgabe bearbeitet  
✅ Gelernt, dass Agenten nicht perfekt, aber leistungsfähig sind  
✅ Erkannt, welches Tool zu deinem Team passt  

Das ist nicht wenig. Das ist ein echter Paradigmenwechsel.

**Willkommen im agentic Programming 🎉**

---

[← Zurück zu Lab 1](lab-01-single-agent-ticket.md) | [Weiter zu MCP →](../04-mcp-and-tooling/mcp-core-concepts.md)
