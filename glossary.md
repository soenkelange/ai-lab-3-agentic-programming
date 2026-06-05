# Glossar & Akronyme

## A

**Agent**  
Ein System, das ein Modell nutzt, um Ziele durch autonome Aktionen zu verfolgen. Agenten können Dateien lesen, Shell-Kommandos ausführen, APIs aufrufen und sich selbst korrigieren.

**Agentic Programming**  
Die Praktik, Software-Systeme zu bauen, in denen Agenten (nicht Menschen) den Code schreiben, testen und deployten.

**API Key**  
Authentifizierungscode für einen LLM-Provider (z.B. `sk-ant-...` für Anthropic, `sk-...` für OpenAI).

## C

**Claude (Series)**  
Anthropics LLM-Familie. Aktuelle Version: Claude 3.5 Sonnet (2026). Beste Foundation für Agentic Programming.

**Cursor IDE**  
Eigenständige IDE (VSCode-Fork) mit integriertem Agent. $20/Monat. Sehr populär bei Startups.

## E

**Emerging**  
Tech, die noch nicht 5 Jahre alt ist und möglich noch nicht produktiv.

## F

**Framework (Agent)**  
Software-Bibliothek zum Orchestrieren von mehreren Agents. Beispiele: LangGraph, CrewAI, PydanticAI.

**Frontier Models**  
Die besten verfügbaren LLMs (aktuell: Claude 3.5 Sonnet, GPT-5, Gemini 2.0).

## G

**GitHub Copilot**  
IDEs/GitHub's Agent-Angebot. $10/Monat. Enterprise-Standard für große Organisationen.

**GPT-5**  
OpenAIs aktuelles Flaggschiff-Modell (2026). Stark bei Reasoning und Multi-Step Tasks.

## I

**Inference Layer**  
Die Abstraction zwischen Agent-Code und LLM-APIs. LiteLLM ist der Standard.

**Inference Provider**  
Ein Service, der LLM Inference anbietet. Beispiele: Anthropic, OpenAI, Together AI, Groq (Aggregatoren), oder Ollama (lokal).

## L

**LangGraph**  
LangChains Graph-basiertes Framework für Multi-Agent Orchestration. Sehr mächtig, steile Lernkurve.

**LiteLLM**  
Abstraktions-API für LLM-Calls. Ermöglicht Provider-Wechsel ohne Codeänderung. De-facto-Standard.

**LLM (Large Language Model)**  
Ein großes neuronales Netz trainiert auf Textvorhersage. Beispiele: Claude, GPT-5, Qwen3.

## M

**MCP (Model Context Protocol)**  
Standardisierte Schnittstelle für Agents Zugang zu External Tools (GitHub, Jira, Dateien, Datenbanken). By Anthropic.

**Model**  
Das LLM-Netz selbst, trainiert auf Textvorhersage. The foundation, aber nicht die ganze Story.

**Multi-Agent (Swarm)**  
Ein System mit 2+ koordinierten Agents (z.B. Planner + Coder + Reviewer).

## O

**Ollama**  
Tool zum Runterladen / Ausprobieren von Open-Source Modellen lokal. Kostenlos, 100% offline.

**Open-Weights Models**  
LLMs mit veröffentlichten Gewichten (nicht nur API). Beispiele: Qwen3, Llama, Mistral. Frei zu deployen.

## P

**Pi Coding Agent**  
Neue Terminal-native Agent-CLI (2026). Kostenlos, Open Source, Multi-Provider.

**Provider (Inference)**  
Ein Unternehmen, das LLM Inference API anbietet. Beispiele: Anthropic, OpenAI, Together AI.

**Prompt Engineering**  
Die Praxis, Prompts zu schreiben, um LLMs zu dirigieren. Traditioneller 2023er Skill.

## Q

**Qwen3 Coder**  
Alibabas bestes Open-Weights Coding-Modell. Kostenlos, lokal via Ollama, 90% of Claude Quality.

## R

**Runtime (Inference)**  
Software zum Ausführen von Modellen. Beispiele: Ollama, vLLM, NVIDIA TensorRT.

## S

**Swarm (Multi-Agent)**  
Ein Netzwerk von Agents, die koordiniert eine größere Aufgabe lösen.

## T

**Tool Use / Function Calling**  
Die Fähigkeit von LLMs, zu sagen "ich brauche dieses Tool", anstatt nur Text zu generieren.

## V

**Vendor Lock-In**  
Die Abhängigkeit von einem einzelnen Anbieter (z.B. nur Anthropic-API). Schlecht für Resilienz.

## W

**Windsurf IDE**  
Eine weitere VSCode-Fork IDE mit Agents, stärker auf Teams fokussiert als Cursor. $20/Monat.

## Z

**Zielgerichtete Autonomie**  
Die Fähigkeit eines Agents, ein Ziel eigenständig zu verfolgen, ohne menschliche Intervention bei jedem Schritt.

---

## Akronyme

| Akronym | Auflösung | Kontext |
|---------|-----------|---------|
| **API** | Application Programming Interface | Wie Software miteinander spricht |
| **CLI** | Command Line Interface | Terminal / kommandozeile |
| **GUI** | Graphical User Interface | Fenster / IDE / Browser |
| **IDE** | Integrated Development Environment | VSCode, Cursor, Windsurf, etc. |
| **LLM** | Large Language Model | Claude, GPT-5, Qwen, Llama |
| **MCP** | Model Context Protocol | Standard für LLM-Tool-Integration |
| **PR** | Pull Request | Ein Code-Änderungsvorschlag in Git |
| **RPM** | Requests Per Minute | Ratelimit bei APIs |
| **JSON** | JavaScript Object Notation | Standard-Datenformat |
| **YAML** | YAML Ain't Markup Language | Config-File Format |

---

## Weiterführende Ressourcen

- [Anthropic Docs](https://docs.anthropic.com)
- [LangChain / LangGraph Docs](https://python.langchain.com/docs/langgraph)
- [MCP Specification](https://spec.modelcontextprotocol.io)
- [GitHub Discussions](https://github.com/ai-lab-3-agentic-programming/discussions)

