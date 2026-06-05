# Agent vs. Framework — Was ist austauschabar?

> ⏱️ 10 Minuten  
> 🎯 Outcome: Verstehen, was du self-hosting vs. outsourcing kannst

---

## Zu Beginn: What are we talking about?"

| Konzept | Definition | Beispiele |
|---------|-----------|----------|
| **Coding Agent** | Ein ausführender Agent, der direkt an Code arbeitet (single-session Fokus) | Claude Code, Cursor IDE, Pi Agent, Aider |
| **Agent Orchestrator / Command Center** | Koordiniert mehrere Agents, Sessions und Kontext über Workflows hinweg | Devin Desktop (ehemals Windsurf), Devin Cloud |
| **Multi-Agent-Framework** | Code-Bibliothek zum Bauen von Orchestrierung (Workflows, State, Tool-Calling) | LangGraph, CrewAI, AutoGen, PydanticAI, Mastra |
| **Model** | Das LLM selbst | Claude 3.5, GPT-5, Qwen3 Coder |

---

## Visualisiert

```mermaid
flowchart TD
  subgraph F[Agent Frameworks - LangGraph, CrewAI, ...]
    A1[Agent 1]
    A2[Agent 2]
    O[Orchestrate / Routing]
    M[Model Layer / LiteLLM]
    A1 --> O
    A2 --> O
    O --> M
  end
  M --> C[Claude API]
  M --> L[Ollama Local]
```

---

## Der Key Decision Tree

Für dein Projekt: **Welcher Teil gehört dir, welcher nicht?**

### Option A: Managed Agent (IDE-basiert)

**Dir gehört:** Dein Code + deine Prompts  
**Dir gehört NICHT:** Der Agent selbst, die Inference

```mermaid
flowchart TD
  A[Du schreibst: Fix this bug] --> B[Managed Agent arbeitet]
  B --> C[Du reviewst]
```

**Beispiele:** GitHub Copilot, Cursor IDE, Claude Code (im IDE- oder CLI-Modus)

**Vorteil:**
- ✅ Sofort produktiv
- ✅ Keine Ops/Infrastruktur
- ✅ Beste UX (IDE integriert)

**Nachteil:**
- ❌ Vendor Lock-in (Cursor-Nutzer?)
- ❌ Keine volle Kontrolle über Agent-Verhalten
- ❌ Model-Wechsel = IDE-Wechsel

---

### Option B: DIY Agent + Framework

**Dir gehört:** Alles (Code, Agent, Workflows, Models)  
**Du brauchst:** Framework + Model-Provider

```mermaid
flowchart TD
  A[Du schreibst: LangGraph Workflow] --> B[Agent orchestriert LLM Calls]
  B --> C[Deployment: Lambda / Cloud Run / On-Prem]
  C --> D[API User: Löse Issue #42]
```

**Beispiele:** LangGraph, CrewAI, AutoGen, PydanticAI, Mastra

**Vorteil:**
- ✅ Kontrolle über alles
- ✅ Model-agnostisch (Claude → Qwen via LiteLLM)
- ✅ Skalierbarkeit in Production

**Nachteil:**
- ❌ Mehr Code zu schreiben
- ❌ Du brauchst Infra-Know-How (Deployment, Monitoring)
- ❌ Längerer Feedback-Loop beim Entwickeln

---

### Option C: Hybrid

**Kombination:** Nutze IDE-Agent für schnelle Iteration + Framework für Production

```mermaid
flowchart TD
    A[Prompt in Agent iterieren] --> B[Prompt in Framework übernehmen]
    B --> C[Mit LiteLLM deployen]
    C --> D[Production: volle Kontrolle]
```

**Das ist der pragmatische Weg für fast alle Teams.**

---

## Wichtige Abgrenzung: Agent vs. Orchestrator vs. Framework

```mermaid
flowchart LR
  A[Coding Agents\nCursor, Copilot, Claude Code, Aider, Pi] --> B[Agent Orchestrator\nDevin Desktop als Agent Command Center]
  B --> C[Multi-Agent-Framework\nLangGraph, CrewAI, AutoGen]
```

- **Coding Agent:** Führt konkrete Entwicklungsaufgaben aus.
- **Orchestrator:** Koordiniert mehrere Agents und Sessions, inklusive Kontext-Sharing.
- **Framework:** Baustein auf Code-Ebene, um eigene Multi-Agent-Systeme zu entwickeln und zu betreiben.

Für die aktuelle Marktlage heißt das: **Devin Desktop (ehemals Windsurf)** ist nicht nur ein weiterer Coding Agent, sondern zunehmend ein **Orchestrator-Interface** für mehrere lokale und Cloud-Agents.

---

## Comparison Matrix: Agent-IDE vs. Framework

| Aspekt | GitHub Copilot | Cursor | Claude Code | LangGraph | CrewAI | Pi Agent |
|--------|---|---|---|---|---|---|
| **Setup-Zeit** | 5 min (IDE) | 5 min | 5 min | 30 min (Python) | 30 min | 10 min |
| **Model-Wechsel** |  Nicht möglich | Limited | Nur Anthropic | LiteLLM ✅ | Multiple | LiteLLM ✅ |
| **Für Production?** | Naja | Naja | Ja (Web UI) | **Ja** | **Ja** | Ja (CLI) |
| **Kontrolle über Agent-Verhalten** | Gering | Mittel | Hoch | **Maximal** | Maximal | Hoch |
| **Typ** | IDE-Extension | IDE | Web UI + CLI | Python Framework | Python Framework | Python CLI |
| **Self-Host möglich?** | Nein | Nein | Nein...doch (OSS) | **Ja** | **Ja** | Ja |

---

## Ein konkretes Beispiel: "Feature Factory Workflow"

**Szenario:** GitHub-Issue → Automatisch implementiert → PR mit Tests

### Mit Option A (Managed IDE)

```mermaid
flowchart TD
    A[Developer öffnet Agent] --> B[Implement issue #42]
    B --> C[Agent arbeitet in Echtzeit]
    C --> D[PR wird geöffnet]
    D --> E[Done]
```

### Mit Option B (Framework + DIY)

```mermaid
flowchart TD
    A[Einmalig: Workflow + 3 Agents + Deployment] --> B[Webhook: GitHub Issue created]
    B --> C[AWS Lambda]
    C --> D[LangGraph]
    D --> E[Planner/Developer/Reviewer handeln]
    E --> F[PR in GitHub]
```

**Kosten-Nutzen:**
- Option A: 5 Min Pro-Ticket (aber Devs sind blockiert)
- Option B: 4 Std Einrichtung, dann 0 Min pro Ticket (Agents laufen 24/7)

---

## Die wichtigste Entscheidung: Zur "Control Dimension"

Hier ist das Framework, das für dich richtig ist:

```mermaid
flowchart LR
  L[Low Control: Managed IDE]
  M[Mid Control: Agent + API]
  H[High Control: Framework]
  L --> M --> H
```

---

## Entscheidungsbaum für dein Team

```mermaid
flowchart TD
  A[Brauchst du Multi-Agent?] -->|Ja| B[Brauchst du ein Command Center statt nur Code-Execution?]
  B -->|Ja| C[Devin Desktop als Orchestrator]
  B -->|Nein| D[Framework: LangGraph / CrewAI / AutoGen / PydanticAI]
  A -->|Nein| E[IDE-Agent genug?]
  E -->|Ja| F[Cursor / Copilot / Claude Code]
  E -->|Nein| G[Claude Code + Framework]
```

---

## Warum das für dich wichtig ist

🎯 **Jetzt:** Framework wählen ist strategisch, nicht technisch.  
🎯 **Morgen:** Agenten sind über Teams hinweg austauschabar.  
🎯 **In 6 Monaten:** Dein Agent-Ökosystem ist eine echte Infrastruktur.

---

## Konkrete nächste Schritte

1. **Zeithorizon klar:** Nur für mich (IDE)? Oder Produktions-Workflow?
2. **Kontrolle:** Brauche ich Model-Flexibilität? → dann LiteLLM + Framework
3. **Komplexität:** Will ich 1 Agent oder 5? → dann eher Framework
4. **Team-Fähigkeit:** Python? → Framework. Nicht-Devs? → IDE-Agent.

---

## Kurzer Ausblick: Agentic Enterprise

Hier nur als Orientierung, ohne Deep Dive: Wenn Teams von Agentic Programming Richtung Agentic Enterprise wachsen, werden typischerweise diese Themen wichtig:

- **DevSecOps:** Security und Betrieb frueh mitdenken.
- **MLOps:** Modelle, Versionen, Evaluation und Rollout systematisch betreiben.
- **LLMOps:** Prompts, Kontext, Evaluation und Betrieb von LLM-basierten Systemen gezielt steuern.
- **Guardrails:** klare Grenzen fuer Tool-Nutzung, Datenzugriff und Freigaben.
- **Governance:** Nachvollziehbarkeit, Rollen, Verantwortlichkeiten.
- **Skalierung:** von Einzel-Agenten zu stabilen Team-Workflows.

```mermaid
flowchart LR
  A[Agentic Programming\nPrompt + Tool Use] --> B[Team-Workflows\nSingle/Multi-Agent]
  B --> C[Agentic DevSecOps\nPolicy + Guardrails + Audit]
  C --> D[Agentic Enterprise\nGoverned, Scalable, Compliant]
```

Fuer einen spaeteren Deep Dive in Guardrails ist diese Referenz hilfreich:

- [NVIDIA NeMo Guardrails](https://github.com/NVIDIA-NeMo/Guardrails)

Fuer die Abgrenzung von MLOps und LLMOps ist diese Referenz hilfreich:

- [ZenML: MLOps vs LLMOps](https://www.zenml.io/blog/mlops-vs-llmops)

Im Curriculum passt dieser Ausblick besonders zu:

- [05-agentic-workflows/security-guardrails.md](../05-agentic-workflows/security-guardrails.md)
- [05-agentic-workflows/secure-software.md](../05-agentic-workflows/secure-software.md)

---

**Nächstes Modul:** [Die gesamte Architektur Stack verstehen](architecture-stack.md) (15 min)
