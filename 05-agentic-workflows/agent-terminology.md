# Agent-Terminologie über verschiedene Coding Agents hinweg

> Die wichtige Schicht vor Sub-Agents: Prompts, Instructions, Rules, Skills, Memory und Tool Policy.

## Warum das wichtig ist

Unterschiedliche Coding Agents verwenden unterschiedliche Begriffe für dieselben Ideen. Wenn Agenten effizient und konsistent arbeiten sollen, musst du standardisieren, wie du Folgendes ausdrückst:

- Verhaltensinstruktionen
- Tool-Grenzen
- wiederverwendbare Aufgabenmuster
- optionale tiefergehende Helfer
- Memory- oder Kontext-Persistenz

Das ist besonders in Cursor wichtig, wo Rules und Skills ein zentrales Produktivitätsinstrument sind und vor Sub-Agents als Kernthema des Workshops behandelt werden sollten.

---

## Terminologie-Mapping

Die zentrale, gepflegte Matrix liegt in:

- [Terminologie-Matrix](../_shared/_terminology-matrix.md)

Diese Seite erklaert die Begriffe didaktisch und zeigt die empfohlene Reihenfolge fuer den Workshop.

---

## Praktische Einordnung

### Cursor
Cursor macht **Rules** und **Skills** sehr sichtbar und produktiv. Behandle sie als Teil des Repo-Designs und nicht als nachträglichen Zusatz.

### Claude Code
Claude Code betont **Skills**, **Sub-Agents** und **Tooling**. Das mentale Model ist sehr ähnlich, aber mit anderer Benennung und stärkerem Terminal-First-Fokus.

### Devin Desktop (ehemals Windsurf)
Devin Desktop präsentiert die Idee nicht nur als IDE-Assistenz, sondern zunehmend als Agent Command Center mit Workspace-Instruktionen, Session-Koordination und geteiltem Kontext.

### Wichtige Einordnung 2026
- Coding Agent: führt konkrete Coding-Tasks aus (z. B. Cursor, Claude Code, Aider).
- Agent Orchestrator: koordiniert mehrere Agents und Sessions (z. B. Devin Desktop).
- Multi-Agent-Framework: wird im Code implementiert und betrieben (z. B. LangGraph, CrewAI, AutoGen).

### GitHub Copilot
Copilot unterstützt dieselbe konzeptionelle Schicht, aber mit eigener Begriffswelt und eigenen Dateitypen.

Typische Copilot-Begriffe, die explizit vermittelt werden sollten:

- Prompt: wiederverwendbare Prompt-Dateien für wiederholbare Aufgaben.
- Instructions: persistente Projektleitlinien.
- Skills: wiederverwendbare Capability-Bündel für häufige Workflows.
- Agents: Custom-Agent-Modi für spezialisierte Aufgaben.
- Hooks: Policy- und Automation-Trigger für Guard Rails.

Fuer Workshop-Konsistenz sollten diese als direkte Entsprechungen zu "Rules + Skills + Agents + Policy Automation" in anderen Tools behandelt werden.

### Aider
Aider ist näher an promptgetriebener CLI-Automation. Die Konzepte existieren weiterhin, werden aber meist über Repo-Konventionen, Prompt-Templates oder Kommando-Nutzungsmuster umgesetzt.

### Pi / OpenCode
Diese Tools bilden die Konzepte häufig eher als Config, Prompts, Policies oder Orchestrierungs-Settings ab als als gebrandetes Skill-System.

---

## Empfohlene Workshop-Reihenfolge

1. **System prompt vs. User prompt**
2. **Rules und Workspace-Instruktionen**
3. **Skills als wiederverwendbare Capability-Pakete**
4. **Tool Policy und Sicherheitsgrenzen**
5. **Memory und Persistenz**
6. **Sub-Agents erst nach den Punkten oben**

Diese Reihenfolge verankert den Workshop zuerst in konsistenter Agent-Nutzung, bevor Multi-Agent-Delegation behandelt wird.

---

## Warum Skills und Rules so wichtig sind

Wenn ein Team sie gut einsetzt, entstehen:

- konsistentere Ergebnisse
- weniger wiederholte Erklärungen
- bessere Sicherheitsgrenzen
- weniger Prompt Drift
- schnelleres Onboarding für neue Mitwirkende
- bessere Wiederverwendung über Projekte hinweg

Deshalb gehört dieses Thema **vor** Sub-Agents.

---

## Vorgeschlagene Workshop-Übung

Die Teilnehmenden sollen drei Repository-Regeln definieren:

- Secrets standardmäßig nie lesen
- niemals Secrets committen
- vor destruktiven Aktionen nachfragen

Danach sollen sie eine wiederverwendbare Skill oder Workflow-Instruktion für eine häufige Coding-Aufgabe definieren.

---

## Siehe auch

- [Agentic Workflows](README.md)
- [Security Guard Rails](security-guardrails.md)
- [Feature Factory](feature-factory.md)
