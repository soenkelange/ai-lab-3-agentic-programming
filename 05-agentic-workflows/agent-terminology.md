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

| Konzept | Bedeutung | Cursor | Claude Code | Devin Desktop (ehemals Windsurf) | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|---|
| **System prompt** | Hoch priorisierte Verhaltensinstruktion für den Agenten | Basis-Instruktionen des Agenten, meist verborgen | Model-/Runtime-Instruktionen, meist verborgen | Plattform-Instruktionen, meist verborgen | Service-Level-Instruktionen, meist verborgen | Prompt-Template / Model-Instruktionen | Plattform- oder Prompt-Level-Instruktionen |
| **User prompt** | Die Aufgabe, die der Nutzer gerade stellt | Chat-Nachricht, Kommando oder Anfrage | Chat- / Terminal-Anfrage | Chat-Anfrage | Chat-Anfrage | CLI-Instruktion | CLI- / Chat-Anfrage |
| **Instructions** | Persistente projektweite Anleitung für Verhalten und Stil | Meist als Rules und Projektkontext repräsentiert | Oft Projekt-Instruktionen oder Workflow-Guidance | Meist Workspace-Instruktionen | Ja: explizite Instruktionsdateien für Projektverhalten | Meist Repo-Notizen und Prompt-Templates | Oft Config- oder Instruktionsdateien |
| **Rules** | Persistente Einschränkungen, die das Verhalten steuern | Ja: Projektregeln / User-Regeln | Oft Projekt-Instruktionen oder Workflow-Guidance | Ja, typischerweise projektweite Instruktionen | Ja: über Instruktionsdateien und Policy-Guidance umsetzbar | Meist über Prompt-Templates oder Repo-Instruktionen | Oft Config oder Prompt-Policy |
| **Skills** | Wiederverwendbare, aufgabenspezifische Capability-Pakete | Ja: Skills sind ein First-Class-Konzept | Ja: Skills sind ein First-Class-Konzept | Teilweise Workflow-Packs oder Agent-Verhalten | Meist nicht so benannt | Meist nicht so benannt | Teilweise Templates oder Plugins |
| **Agents** | Benutzerdefinierte spezialisierte Agent-Modi für gezielte Workflows | Agent-Modi / Workflow-Rollen | Sub-Agents und spezialisierte Rollen | In manchen Workflows unterstützt | Ja: Custom Agents sind ein unterstütztes Konzept | Meist nicht im Fokus | Teilweise über Orchestrierung unterstützt |
| **Hooks** | Ereignisgetriebene Automation zur Policy-Durchsetzung oder zum Auslösen von Workflows | Teilweise über Workspace-Automation | Teilweise über Workflow-Tooling | Teilweise über Workspace-Automation | Ja: Hooks werden für Policy-/Automation-Workflows unterstützt | Meist über Shell-Skripte und Git-Hooks | Meist über Config oder Shell-Hooks |
| **Sub-agents** | Verschachtelte spezialisierte Agenten, die einen Teil einer Aufgabe übernehmen | In Agent-Workflows unterstützt | Explizit unterstützt | In manchen Workflows unterstützt | Kann über Custom Agents und Delegations-Workflows modelliert werden | Meist nicht im Fokus | Teilweise über Orchestrierung unterstützt |
| **Memory** | Persistenter Kontext über Aufgaben hinweg | Projekt-Memory / Kontextfunktionen | Memory- / Persistenzfunktionen | Persistenter Workspace-Kontext | Eingeschränkt / plattformabhängig | Meist Git-Historie und Repo-Kontext | Persistente Memory-Funktionen in manchen Tools |
| **Tool policy** | Welche Tools erlaubt, blockiert oder nur mit Freigabe nutzbar sind | Rules und Einstellungen können das einschränken | Integrierte Tool-Berechtigungen und Freigaben | Workspace-Policies und Freigaben | Admin-/Workspace-Policy | CLI-Verhalten plus Repository-Konventionen | Über Agent-Einstellungen konfigurierbar |

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

für Workshop-Konsistenz sollten diese als direkte Entsprechungen zu "Rules + Skills + Agents + Policy Automation" in anderen Tools behandelt werden.

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
