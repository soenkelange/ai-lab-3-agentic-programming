# Agent-Terminologie ueber verschiedene Coding Agents hinweg

> Die wichtige Schicht vor Sub-Agents: Prompts, Instructions, Rules, Skills, Memory und Tool Policy.

## Warum das wichtig ist

Unterschiedliche Coding Agents verwenden unterschiedliche Begriffe fuer dieselben Ideen. Wenn Agenten effizient und konsistent arbeiten sollen, musst du standardisieren, wie du Folgendes ausdrueckst:

- Verhaltensinstruktionen
- Tool-Grenzen
- wiederverwendbare Aufgabenmuster
- optionale tiefergehende Helfer
- Memory- oder Kontext-Persistenz

Das ist besonders in Cursor wichtig, wo Rules und Skills ein zentrales Produktivitaetsinstrument sind und vor Sub-Agents als Kernthema des Workshops behandelt werden sollten.

---

## Terminologie-Mapping

| Konzept | Bedeutung | Cursor | Claude Code | Windsurf | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|---|
| **System prompt** | Hoch priorisierte Verhaltensinstruktion fuer den Agenten | Basis-Instruktionen des Agenten, meist verborgen | Modell-/Runtime-Instruktionen, meist verborgen | Plattform-Instruktionen, meist verborgen | Service-Level-Instruktionen, meist verborgen | Prompt-Template / Modell-Instruktionen | Plattform- oder Prompt-Level-Instruktionen |
| **User prompt** | Die Aufgabe, die der Nutzer gerade stellt | Chat-Nachricht, Kommando oder Anfrage | Chat- / Terminal-Anfrage | Chat-Anfrage | Chat-Anfrage | CLI-Instruktion | CLI- / Chat-Anfrage |
| **Instructions** | Persistente projektweite Anleitung fuer Verhalten und Stil | Meist als Rules und Projektkontext repraesentiert | Oft Projekt-Instruktionen oder Workflow-Guidance | Meist Workspace-Instruktionen | Ja: explizite Instruktionsdateien fuer Projektverhalten | Meist Repo-Notizen und Prompt-Templates | Oft Config- oder Instruktionsdateien |
| **Rules** | Persistente Einschraenkungen, die das Verhalten steuern | Ja: Projektregeln / User-Regeln | Oft Projekt-Instruktionen oder Workflow-Guidance | Ja, typischerweise projektweite Instruktionen | Ja: ueber Instruktionsdateien und Policy-Guidance umsetzbar | Meist ueber Prompt-Templates oder Repo-Instruktionen | Oft Config oder Prompt-Policy |
| **Skills** | Wiederverwendbare, aufgabenspezifische Capability-Pakete | Ja: Skills sind ein First-Class-Konzept | Ja: Skills sind ein First-Class-Konzept | Teilweise Workflow-Packs oder Agent-Verhalten | Meist nicht so benannt | Meist nicht so benannt | Teilweise Templates oder Plugins |
| **Agents** | Benutzerdefinierte spezialisierte Agent-Modi fuer gezielte Workflows | Agent-Modi / Workflow-Rollen | Sub-Agents und spezialisierte Rollen | In manchen Workflows unterstuetzt | Ja: Custom Agents sind ein unterstuetztes Konzept | Meist nicht im Fokus | Teilweise ueber Orchestrierung unterstuetzt |
| **Hooks** | Ereignisgetriebene Automation zur Policy-Durchsetzung oder zum Ausloesen von Workflows | Teilweise ueber Workspace-Automation | Teilweise ueber Workflow-Tooling | Teilweise ueber Workspace-Automation | Ja: Hooks werden fuer Policy-/Automation-Workflows unterstuetzt | Meist ueber Shell-Skripte und Git-Hooks | Meist ueber Config oder Shell-Hooks |
| **Sub-agents** | Verschachtelte spezialisierte Agenten, die einen Teil einer Aufgabe uebernehmen | In Agent-Workflows unterstuetzt | Explizit unterstuetzt | In manchen Workflows unterstuetzt | Kann ueber Custom Agents und Delegations-Workflows modelliert werden | Meist nicht im Fokus | Teilweise ueber Orchestrierung unterstuetzt |
| **Memory** | Persistenter Kontext ueber Aufgaben hinweg | Projekt-Memory / Kontextfunktionen | Memory- / Persistenzfunktionen | Persistenter Workspace-Kontext | Eingeschraenkt / plattformabhaengig | Meist Git-Historie und Repo-Kontext | Persistente Memory-Funktionen in manchen Tools |
| **Tool policy** | Welche Tools erlaubt, blockiert oder nur mit Freigabe nutzbar sind | Rules und Einstellungen koennen das einschraenken | Integrierte Tool-Berechtigungen und Freigaben | Workspace-Policies und Freigaben | Admin-/Workspace-Policy | CLI-Verhalten plus Repository-Konventionen | Ueber Agent-Einstellungen konfigurierbar |

---

## Praktische Einordnung

### Cursor
Cursor macht **Rules** und **Skills** sehr sichtbar und produktiv. Behandle sie als Teil des Repo-Designs und nicht als nachtraeglichen Zusatz.

### Claude Code
Claude Code betont **Skills**, **Sub-Agents** und **Tooling**. Das mentale Modell ist sehr aehnlich, aber mit anderer Benennung und staerkerem Terminal-First-Fokus.

### Windsurf
Windsurf praesentiert die Idee eher als Workspace-Instruktionen, Agent-Verhalten und Projektkonfiguration statt als stark gebrandete Skill-Objekte.

### GitHub Copilot
Copilot unterstuetzt dieselbe konzeptionelle Schicht, aber mit eigener Begriffswelt und eigenen Dateitypen.

Typische Copilot-Begriffe, die explizit vermittelt werden sollten:

- Prompt: wiederverwendbare Prompt-Dateien fuer wiederholbare Aufgaben.
- Instructions: persistente Projektleitlinien.
- Skills: wiederverwendbare Capability-Buendel fuer haeufige Workflows.
- Agents: Custom-Agent-Modi fuer spezialisierte Aufgaben.
- Hooks: Policy- und Automation-Trigger fuer Guard Rails.

Fuer Workshop-Konsistenz sollten diese als direkte Entsprechungen zu "Rules + Skills + Agents + Policy Automation" in anderen Tools behandelt werden.

### Aider
Aider ist naeher an promptgetriebener CLI-Automation. Die Konzepte existieren weiterhin, werden aber meist ueber Repo-Konventionen, Prompt-Templates oder Kommando-Nutzungsmuster umgesetzt.

### Pi / OpenCode
Diese Tools bilden die Konzepte haeufig eher als Config, Prompts, Policies oder Orchestrierungs-Settings ab als als gebrandetes Skill-System.

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
- weniger wiederholte Erklaerungen
- bessere Sicherheitsgrenzen
- weniger Prompt Drift
- schnelleres Onboarding fuer neue Mitwirkende
- bessere Wiederverwendung ueber Projekte hinweg

Deshalb gehoert dieses Thema **vor** Sub-Agents.

---

## Vorgeschlagene Workshop-Uebung

Die Teilnehmenden sollen drei Repository-Regeln definieren:

- Secrets standardmaessig nie lesen
- niemals Secrets committen
- vor destruktiven Aktionen nachfragen

Danach sollen sie eine wiederverwendbare Skill oder Workflow-Instruktion fuer eine haeufige Coding-Aufgabe definieren.

---

## Siehe auch

- [Agentic Workflows](README.md)
- [Security Guard Rails](security-guardrails.md)
- [Feature Factory](feature-factory.md)
