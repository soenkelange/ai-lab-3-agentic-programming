# Glossary & Akronyme

## A

**Agent**
Ein System, das ein Model nutzt, um Ziele durch Aktionen zu verfolgen. Ein Agent kann planen, Tools aufrufen, Ergebnisse bewerten und bei Bedarf den eigenen Ansatz anpassen.

**Agentic Programming**
Die Praxis, Software-Systeme so zu bauen, dass Agenten einen wesentlichen Teil der Arbeit übernehmen, zum Beispiel Analyse, Implementierung, Tests und Dokumentation.

**API Key**
Technischer Schlüssel zur Authentifizierung gegen einen Dienst. API Keys müssen vertraulich behandelt, regelmäßig rotiert und möglichst eng berechtigt werden.

**Artefakt**
Ein erzeugtes Ergebnis eines Agenten- oder Entwicklungsprozesses, zum Beispiel ein Diff, ein Testreport, ein Architekturdiagramm oder eine Release-Notiz.

## C

**Claude (Series)**
Model-Family von Anthropic. Wird häufig für anspruchsvolle Aufgaben in Coding- und Workflow-Szenarien eingesetzt.

**Context Window**
Die maximale Menge an Eingabetext, die ein Model in einem Schritt gleichzeitig berücksichtigen kann. Wird dieses Limit überschritten, gehen Informationen verloren oder müssen zusammengefasst werden.

**Cursor IDE**
Eigenständige IDE auf Basis von VS Code mit stark integrierten Agent-Funktionen, etwa Rules, Agent-Modi und Tool-Interaktion.

## D

**Deterministische Schritte**
Prozessschritte mit vorhersehbarem Ergebnis, zum Beispiel Build, Linting oder Snapshot-Vergleiche. Sie sind ein wichtiges Gegengewicht zu probabilistischen Antworten von Models.

## E

**Eval (Evaluation)**
Systematische Bewertung von Agenten- oder Model-Qualität anhand reproduzierbarer Aufgaben und klarer Kriterien, etwa Korrektheit, Sicherheit oder Stabilität.

## F

**Feature Factory**
Wiederholbares Workflow-Muster für die Bearbeitung eines Tickets: verstehen, planen, umsetzen, prüfen, reviewen und übergeben.

**Frontier Models**
Sehr leistungsfähige, aktuelle Spitzenmodelle, die in vielen Benchmarks führen, aber meist als API-Dienste betrieben werden.

## G

**GitHub Copilot**
KI-Angebot von GitHub für Vervollständigung, Chat und Agent-Funktionen in IDE und Plattform-Workflows.

**Guardrail**
Leitplanke, die riskantes Verhalten begrenzt. Beispiele: kein Zugriff auf Secrets, keine destruktiven Befehle ohne Freigabe, nur definierte Dateibereiche ändern.

**GPT-5**
Model-Generation von OpenAI mit Stärken in Reasoning, Tool Use und längeren Arbeitsabläufen.

## H

**Human in the Loop**
Arbeitsweise, bei der Menschen kritische Stellen explizit freigeben oder korrigieren, statt den Agenten vollautonom laufen zu lassen.

## I

**Idempotenz**
Eigenschaft eines Schritts, bei wiederholter Ausführung denselben Zustand zu erzeugen. Wichtig für robuste Automatisierung und sichere Wiederholbarkeit.

**Inference Layer**
Abstraktionsschicht zwischen Agent-Code und Model-APIs. Ermöglicht Model-Wechsel, Logging und zentrale Konfigurationssteuerung.

**Inference Provider**
Dienst, der Inference für Models bereitstellt, lokal oder als Cloud-API.

## J

**Jailbreak (Prompt-Jailbreak)**
Versuch, ein Model durch spezielle Eingaben aus seinen Sicherheits- oder Rollenregeln herauszubrechen.

## L

**LangGraph**
Framework für zustandsbehaftete, graphbasierte Agent-Workflows mit expliziten Knoten, Kanten und Übergangslogik.

**Least Privilege**
Sicherheitsprinzip: Ein Agent bekommt nur genau die Rechte, die für die aktuelle Aufgabe nötig sind, und nichts darüber hinaus.

**LiteLLM**
Bibliothek für einheitliche Modellaufrufe über verschiedene Provider hinweg.

**LLM (Large Language Model)**
Language Model, das aus Trainingsdaten Muster lernt und daraus Text, Code oder strukturierte Antworten erzeugt.

## M

**MCP (Model Context Protocol)**
Offenes Protokoll, über das Agenten standardisiert auf externe Tools und Datenquellen zugreifen können.

**Memory (Agent-Kontext)**
Persistenter oder temporärer Kontext, den ein Agent zwischen Schritten oder Sitzungen nutzen kann, zum Beispiel Regeln, Notizen und Entscheidungen.

**Model**
Das trainierte Netz selbst. Erst in Kombination mit Prompts, Tools, Policies und Workflow entsteht ein leistungsfähiger Agent.

**Multi-Agent-System**
Aufbau, bei dem mehrere spezialisierte Agenten zusammenarbeiten, etwa Planner, Implementierer, Tester und Reviewer.

## O

**Observability**
Nachvollziehbarkeit von Agent-Läufen über Traces, Logs, Metriken und Zwischenergebnisse.

**Ollama**
Lokale Runtime für Open-Weights Models auf Entwicklerrechnern oder im internen Netz.

**Open-Weights Models**
Models mit veröffentlichten Gewichten, die lokal oder in eigener Infrastruktur betrieben werden können.

**Orchestrierung**
Koordination von Rollen, Reihenfolge, Übergaben und Abbruchbedingungen in einem Agent-Workflow.

## P

**Pi Coding Agent**
Terminal-nativer Coding Agent mit Fokus auf Dateien, Shell-Interaktion und mehrstufige Aufgabenbearbeitung.

**Policy (Tool- und Sicherheitsregeln)**
Verbindliche Regeln, welche Tools, Datenquellen oder Aktionen erlaubt, eingeschränkt oder verboten sind.

**Prompt Engineering**
Gestaltung von Eingaben, Kontext und Struktur, um die Ausgabequalität eines Models zu verbessern.

**Prompt Injection**
Angriffsmuster, bei dem in Inhalte versteckte Anweisungen den Agenten zu ungewollten Aktionen verleiten sollen.

## Q

**Qwen3 Coder**
Coding-fokussiertes Open-Weights-Model, das häufig lokal oder über kompatible Inference-Layer genutzt wird.

## R

**RAG (Retrieval-Augmented Generation)**
Verfahren, bei dem vor der Antwort relevante Dokumente abgerufen und als Kontext eingebunden werden.

**Rate Limit**
Begrenzung von API-Aufrufen pro Zeitintervall, zum Beispiel pro Minute.

**Reasoning**
Fähigkeit eines Models, mehrschrittige Schlussfolgerungen strukturiert zu entwickeln.

**Runtime**
Ausführungsumgebung für Inference und zugehörige Infrastrukturkomponenten.

## S

**Sandboxing**
Technik zur Isolierung von Ausführungen, damit ein Prozess nur in klar begrenzten Umgebungen und mit kontrollierten Rechten läuft.

**Skill**
Wiederverwendbare Anleitung für eine klar abgegrenzte Aufgabe, zum Beispiel Security-Review oder Architektur-Check.

**Sub-Agent**
Spezialisierter Agent, an den ein Hauptagent Teilaufgaben delegiert.

**Swarm**
Koordiniertes Multi-Agent-Muster, bei dem mehrere Agenten parallel oder in Rollenketten an einem gemeinsamen Ziel arbeiten.

## T

**Token**
Kleinste Verarbeitungseinheit eines Models bei Eingabe und Ausgabe. Tokenkosten beeinflussen Laufzeit und Preis.

**Tool Use / Function Calling**
Fähigkeit eines Models, strukturierte Tool-Aufrufe zu erzeugen, statt nur freien Text auszugeben.

**Trace**
Nachvollziehbare Spur eines Laufs mit Schritten, Entscheidungen, Tool-Aufrufen und Ergebnissen.

## V

**Vendor Lock-in**
Abhängigkeit von einem einzelnen Anbieter, die Wechselkosten, Risiken und strategische Flexibilität verschlechtert.

## W

**Windsurf IDE**
Agentenorientierte Entwicklungsumgebung auf VS-Code-Basis mit Fokus auf kollaborative Workflows.

**Workflow**
Definierte Abfolge von Schritten, Rollen und Prüfungen zur reproduzierbaren Bearbeitung einer Aufgabe.

## Z

**Zero Trust (im Agent-Kontext)**
Sicherheitsprinzip, bei dem weder Eingaben noch Tools noch Zwischenergebnisse automatisch als vertrauenswürdig gelten.

**Zielgerichtete Autonomie**
Fähigkeit eines Agenten, ein Ziel eigenständig zu verfolgen und nur bei klar definierten Punkten menschliche Freigaben einzuholen.

---

## Akronyme

| Akronym | Auflösung | Kontext |
|---------|------------|---------|
| API | Application Programming Interface | Schnittstelle zwischen Systemen |
| AuthN | Authentication | Identitätsprüfung |
| AuthZ | Authorization | Berechtigungsprüfung |
| CI/CD | Continuous Integration / Continuous Delivery | Build-, Test- und Release-Automatisierung |
| CLI | Command Line Interface | Terminalbasierte Bedienung |
| GUI | Graphical User Interface | Grafische Oberfläche |
| IDE | Integrated Development Environment | Entwicklungsumgebung |
| JSON | JavaScript Object Notation | Datenformat für strukturierte Übergaben |
| LLM | Large Language Model | Language Model für Text- und Codegenerierung |
| MCP | Model Context Protocol | Standard für Tool-Anbindung von Agenten |
| PR | Pull Request | Vorschlag für Codeänderungen in Git-Workflows |
| RAG | Retrieval-Augmented Generation | Antworterzeugung mit Dokumentenabruf |
| RBAC | Role-Based Access Control | Rollenbasiertes Berechtigungsmodell |
| RPM | Requests Per Minute | API-Ratenlimit pro Minute |
| SLA | Service Level Agreement | Vereinbarte Service-Qualität |
| SLO | Service Level Objective | Messbares Qualitätsziel |
| TDD | Test-Driven Development | Entwicklung über Tests als Führungsmechanik |
| YAML | YAML Ain't Markup Language | Lesbares Konfigurationsformat |

---

## Weiterführende Ressourcen

- [Anthropic Dokumentation](https://docs.anthropic.com)
- [LangGraph Dokumentation](https://python.langchain.com/docs/langgraph)
- [MCP Spezifikation](https://spec.modelcontextprotocol.io)
- [GitHub Discussions im Repository](https://github.com/ai-lab-3-agentic-programming/discussions)

