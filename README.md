AI Lab III - Agentic Programming

# Was ist Agentic Programming?

Früher:

```text
Mensch schreibt Code
LLM hilft beim Autocomplete
```

Heute:

```text
Mensch beschreibt Ziel
Agent plant
Agent analysiert Codebasis
Agent implementiert
Agent testet
Agent erstellt PR
Agent dokumentiert
Mensch reviewt
```

Der wesentliche Unterschied:

**Agenten führen Aktionen aus.**
Nicht nur Textgenerierung.

Typische Agent-Fähigkeiten:

* Dateien lesen
* Dateien ändern
* Shell-Kommandos ausführen
* Tests starten
* Git nutzen
* Tickets lesen
* PRs erstellen
* externe APIs aufrufen
* andere Agenten delegieren

Claude Code beschreibt sich inzwischen explizit als „agentic coding tool“. ([Aibars][1])

---

Für ein aktuelles AI-Lab (Stand 2026) würde ich die Landschaft etwas anders strukturieren als noch vor einem Jahr. Die eigentliche Trennlinie verläuft inzwischen nicht mehr zwischen IDEs, sondern zwischen:

```text
Modelle
↓
Inference Layer
↓
Agent Frameworks
↓
Coding Agents
↓
Agentic Workflows
```

Das hilft den Teilnehmern zu verstehen, welche Bausteine austauschbar sind.

---

# Coding Agents

## IDE-zentrierte Agents

### [GitHub Copilot](https://github.com/features/copilot?utm_source=chatgpt.com)

Der Enterprise-Standard.

Aktuelle Entwicklung:

* Chat
* Agent Mode
* GitHub-Agenten
* automatische PR-Erstellung
* Integration in GitHub Workflows

GitHub positioniert Copilot inzwischen klar als Coding Agent und nicht mehr nur als Autocomplete. ([The Verge][1])

---

### [Cursor](https://cursor.com?utm_source=chatgpt.com)

Aktuell vermutlich die am weitesten verbreitete Agent-IDE.

Stärken:

* hervorragendes Codebase-Verständnis
* Agent Mode
* Multi-File Refactoring
* sehr beliebt bei Startups

---

### [Windsurf](https://windsurf.com?utm_source=chatgpt.com)

Starker Cursor-Konkurrent.

Fokus:

* größere Projekte
* Team Workflows
* Agent-first Bedienkonzept

---

## Terminal-native Agents

Hier findet momentan die meiste Innovation statt.

---

### [Claude Code](https://www.anthropic.com/claude-code?utm_source=chatgpt.com)

Der Referenzpunkt für Agentic Coding.

Features:

* Terminal-basiert
* Shell-Zugriff
* Git-Integration
* MCP
* Subagents
* Skills
* große Repositories

Viele Entwickler betrachten Claude Code aktuell als Benchmark für agentisches Software Engineering.

---

### [OpenAI Codex CLI](https://github.com/openai/codex?utm_source=chatgpt.com)

OpenAIs Antwort auf Claude Code.

Eigenschaften:

* Terminal Agent
* MCP
* Tool Use
* lokale und Cloud-Ausführung

---

### [OpenCode](https://github.com/opencode-ai/opencode?utm_source=chatgpt.com)

Open-Source Alternative.

Interessant für:

* lokale Modelle
* Self Hosting
* maximale Anpassbarkeit

---

### [Aider](https://aider.chat?utm_source=chatgpt.com)

Der Veteran unter den Coding Agents.

Stärken:

* Git-zentrierte Entwicklung
* einfache Bedienung
* Bring-your-own-Model

---

### [Pi Coding Agent](https://pi-go.sh?utm_source=chatgpt.com)

Einer der spannendsten Newcomer 2026.

Merkmale:

* Terminal-Agent
* Multi-Provider-Unterstützung
* Claude, GPT, Gemini, Ollama
* lokale Modelle
* persistente Memory-Layer
* LSP-Integration
* stark auf planbasierte Entwicklung ausgerichtet ([Pi-Go][2])

Rund um Pi entsteht gerade ein eigenes Ökosystem, inklusive nativer Desktop-Oberfläche („pi-gui“). ([pi-gui][3])

---

# 2. Modelle

Ein wichtiger Punkt für das AI-Lab:

> Agent ≠ Modell

Ein Agent kann unterschiedliche Modelle nutzen.

---

## Frontier-Modelle

### Claude Sonnet

Sehr stark bei:

* Architektur
* Refactoring
* Agentenverhalten
* Tool Use

---

### GPT-5

Stärken:

* Reasoning
* Agent Workflows
* Tool Calling
* komplexe Multi-Step-Aufgaben

---

### Gemini

Stärken:

* riesige Kontexte
* multimodal
* starke Integration in Google-Ökosysteme

---

## Open-Weights Modelle

### Qwen3 Coder

Der wichtigste Open-Weights-Herausforderer.

Sehr beliebt für:

* lokale Inference
* Agenten
* Self Hosting

---

### Llama

Oft Grundlage für:

* On-Prem-Agenten
* Enterprise-Deployments

---

# 3. Inference Layer

Viele Teams konzentrieren sich auf Modelle und übersehen die eigentliche Architektur-Ebene:

```text
Agent
↓
Inference Layer
↓
Modelle
```

---

## Direkte Provider

* Anthropic
* OpenAI
* Google

Vorteil:

* beste Modelle
* schnellste Features

Nachteil:

* mehrere API Keys
* mehrere APIs

---

## Aggregierende Inference Provider

### [OpenRouter](https://openrouter.ai?utm_source=chatgpt.com)

Der bekannteste Aggregator.

---

### [Together AI](https://www.together.ai?utm_source=chatgpt.com)

Besonders stark bei Open Models.

---

### [Fireworks AI](https://fireworks.ai?utm_source=chatgpt.com)

Optimiert für hohe Performance.

---

### [Groq](https://groq.com?utm_source=chatgpt.com)

Bekannt für extrem niedrige Latenzen.

---

### [Langdock](https://langdock.com?utm_source=chatgpt.com)

Besonders relevant im deutschsprachigen Enterprise-Umfeld.

Eigenschaften:

* einheitliche API
* Zugriff auf viele Frontier-Modelle
* EU-Datenhaltung
* Self-Hosting-Optionen
* Agents, Workflows und Unternehmensintegration in einer Plattform ([langdock.com][4])

Für viele deutsche Unternehmen ist Langdock inzwischen eine interessante Alternative zu direkter OpenAI- oder Anthropic-Nutzung.

---

## Inference Abstraction Layer

### [LiteLLM](https://litellm.ai?utm_source=chatgpt.com)

Extrem wichtig für moderne Agentensysteme.

LiteLLM ist eigentlich kein Provider, sondern eine Abstraktions- und Proxy-Schicht.

Vorteile:

```text
Ein API-Endpunkt
↓
Anthropic
OpenAI
Gemini
Groq
Together
Ollama
vLLM
...
```

Nutzen:

* Provider-Wechsel ohne Codeänderung
* Routing
* Load Balancing
* Fallbacks
* Kostenkontrolle

LiteLLM hat sich faktisch als Standard-Abstraktionsschicht für viele Agent-Plattformen etabliert. ([Reddit][5])

---

## Lokale Inference

### [Ollama](https://ollama.com?utm_source=chatgpt.com)

Der Quasi-Standard.

---

### [vLLM](https://github.com/vllm-project/vllm?utm_source=chatgpt.com)

Für produktive GPU-Server.

---

### [LM Studio](https://lmstudio.ai?utm_source=chatgpt.com)

Sehr beliebt für Entwickler-Workstations.

---

# 4. MCP – die wichtigste Infrastrukturentwicklung

## Model Context Protocol

MCP verbindet Agenten mit externen Systemen:

```text
Agent
↓
MCP
↓
GitHub
Jira
Slack
Filesystem
Browser
Database
Monitoring
```

MCP entwickelt sich gerade zum De-facto-Standard für Tool-Integration.

Für das AI-Lab würde ich MCP als Pflichtbestandteil betrachten.

---

# 5. Agentic Programming Patterns

## Scaffold Generation

Aus:

```text
Erzeuge eine FastAPI-Anwendung
```

entsteht:

* Projektstruktur
* Docker
* Tests
* CI/CD
* Dokumentation

---

## Feature Factory

```text
Ticket
↓
Analyse
↓
Implementierung
↓
Tests
↓
PR
```

Der heute wohl wichtigste Agent-Workflow.

---

## Code Review Agent

Prüft:

* Lesbarkeit
* Architektur
* Testbarkeit
* Wartbarkeit

---

## Security Review Agent

Prüft:

* SQL Injection
* XSS
* Secrets
* Dependency Risks

---

## Refactoring Agent

Typische Aufgaben:

* Framework-Migrationen
* API-Umstellungen
* große Umstrukturierungen

---

## Documentation Agent

Generiert:

* README
* ADRs
* Architekturdiagramme
* API-Dokumentation

---

# 6. Multi-Agent / Swarm Architekturen

Das vermutlich wichtigste Zukunftsthema.

Statt:

```text
1 Agent
```

nutzt man:

```text
Planner
↓
Architect
↓
Coder
↓
Reviewer
↓
Security
↓
Tester
```

---

Frameworks:

* [LangGraph](https://www.langchain.com/langgraph?utm_source=chatgpt.com)
* [CrewAI](https://crewai.com?utm_source=chatgpt.com)
* [OpenAI Agents SDK](https://platform.openai.com/docs/guides/agents-sdk?utm_source=chatgpt.com)
* [PydanticAI](https://ai.pydantic.dev?utm_source=chatgpt.com)
* [Mastra](https://mastra.ai?utm_source=chatgpt.com)
* [Letta](https://www.letta.com?utm_source=chatgpt.com)

---

# Meine Empfehlung für das AI-Lab

Wenn du nur **einen halben Tag** hast, würde ich diese Agenda wählen:

### Teil 1 – Landscape (30 min)

* Modelle
* Inference Layer
* LiteLLM
* Langdock
* MCP

### Teil 2 – Coding Agents (45 min)

* Claude Code
* Codex CLI
* Cursor
* Pi Coding Agent
* OpenCode

### Teil 3 – Live Demo (60 min)

Ein echtes Ticket:

```text
Issue
↓
Plan
↓
Implementierung
↓
Tests
↓
PR
```

mit Claude Code oder Pi.

### Teil 4 – Advanced Topics (45 min)

* Swarms
* LangGraph
* Agent Memory
* MCP Server
* lokale Modelle mit Qwen3 Coder

Das ergibt einen sehr aktuellen Überblick über die Agentic-Programming-Landschaft und zeigt gleichzeitig die Architekturprinzipien hinter dem Hype. Der größte Erkenntnisgewinn für viele Entwickler ist dabei meist, dass **Modelle austauschbar werden, während Agenten, MCP und die Inference-Layer zur eigentlichen Plattform werden.**

[1]: https://www.theverge.com/news/669339/github-ai-coding-agent-fix-bugs?utm_source=chatgpt.com "GitHub's new AI coding agent can fix bugs for you"
[2]: https://pi-go.sh/?utm_source=chatgpt.com "pi-go — Terminal AI Coding Agent"
[3]: https://www.pi-gui.com/?utm_source=chatgpt.com "pi-gui — A native desktop for AI coding agents"
[4]: https://langdock.com/enterprise?utm_source=chatgpt.com "Enterprise AI Platform | Langdock"
[5]: https://www.reddit.com/r/AI_Agents/comments/1ql33dp/some_rough_edges_we_hit_running_litellm_in/?utm_source=chatgpt.com "Some rough edges we hit running LiteLLM in production"
