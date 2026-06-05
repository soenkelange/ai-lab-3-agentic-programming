# Agent Selection Matrix — Welcher Agent passt zu mir?

> ⏱️ 15 Minuten  
> 🎯 Outcome: Die richtige Agent-IDE oder CLI für deinen Use Case wählen

## Workshop default

Für den 2-Stunden-Standardpfad nutzen wir **Aider oder OpenCode mit einem lokalen Modell** als kostenlose Baseline.

Cursor bleibt eine sehr gute Vergleichsreferenz, ist aber nicht die kostenlose Baseline.

Die gleichen Konzepte lassen sich danach auf Cursor, Claude Code, Windsurf, Copilot und Pi übertragen.

---

## Terminology Map

| Concept | Cursor | Claude Code | Windsurf | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|
| system prompt | hidden base instructions | hidden base instructions | hidden base instructions | hidden platform instructions | prompt template | hidden platform instructions |
| user prompt | chat or command | chat or terminal request | chat request | chat request | CLI instruction | CLI or chat request |
| rules | workspace or project rules | repo instructions or skill guidance | workspace instructions | repo instructions or admin guidance | prompt conventions | config or prompt policy |
| skills | reusable skill-like workflows | skills | workflow packs | not usually branded this way | prompt templates | templates or plugins |
| sub-agents | delegated helpers | sub-agents | secondary helpers | limited | uncommon | orchestration helpers |
| memory | workspace context | memory / persistence | workspace context | platform context | git history + repo context | memory / context features |
| tool policy | workspace rules and settings | approvals and permissions | workspace policies | admin or workspace policy | prompt and command conventions | config and approvals |

---

## Schnell-Entscheidung (Entscheidungsbaum)

```
                    Suchst du einen Agent?
                           /      \
                          /        \
                     GUI/IDE?      CLI/Scripting?
                     /      \           /      \
                   /        \         /        \
              Pro?      Free?   Local?     Cloud OK?
              /          /  \     /  \        /  \
          Copilot    Cursor Wind  Aider Pi  Claude Code
          (GitHub)            surf   (Old)       (Anthropic)
                                            (Web UI)
```

---

## Full Comparison Matrix

| Eigenschaft | GitHub Copilot | Cursor | Windsurf | Claude Code | Pi Agent | Aider | OpenCode |
|-----------|---|---|---|---|---|---|---|
| **Kosten** | $10/mo | $20/mo | $20/mo | Free (web UI) | Free | Free | Free |
| **Typ** | VSCode Ext | IDE | IDE | Web UI + CLI | CLI | CLI | CLI |
| **Lokal?** | Nein | Nein | Nein | Web nur | Ja (CLI) | Ja | Ja |
| **Modell-Wahl** | Nur CoPilot Models | Limited | Limited | Nur Claude | Claude + mehrere | Bring-your-own | Beliebig |
| **MCP Support?** | ❌ | ❌ | ❌ | ✅ | ✅ | ❌ | TBD |
| **Für Team (5+ Dev)** | ✅Nice | ✅ | ✅ | ✅ (Web) | ⚠️ CLI | ⚠️ | ⚠️ |
| **Beste für Refactoring** | ✅Good | ✅✅ Excellent | ✅✅ Excellent | ✅✅ Excellent | ✅Good | ✅Good | ⚠️ |
| **Debugging Support** | ✅ | ✅✅ | ✅✅ | ✅ | ✅ | ✅ | ⚠️ |
| **Aktualisierung** | Regelmäßig | Wöchentlich | Wöchentlich | Häufig | Häufig | Unregelmäßig | Unregelmäßig |
| **Vendor Lock-in** | Hoch (GitHub) | Mittel | Mittel | Mittel (Anthropic) | Tief (Pi) | Niedrig | Niedrig |

---

## Detaillierte Profile

### 🏢 GitHub Copilot

**Typ:** VSCode/GitHub Enterprise Extension

```
Nutzer → Chat in VSCode → GitHub Copilot macht Agent-Action
```

**Best For:**
- ✅ Enterprise Teams (mit GitHub)
- ✅ Leichte Code-Completion + Chat
- ✅ GitHub-Integration (Gespräche werden zu PRs)
- ✅ Admin will zentrale Kontrolle

**Nicht gut für:**
- ❌ Lokale Modelle
- ❌ Model-Flexibilität
- ❌ Deep Code Refactoring

**Kosten:** $10/Nutzer/Monat (oder Enterprise-Vertrag)

**Setup:** 5 min (install VSCode Ext)

---

### 🎨 Cursor

**Typ:** Eigenständige IDE (Fork von VSCode)

```
Cursor IDE = VSCode + bessere Agent-Integration + eigene Features
```

**Best For:**
- ✅ Einzelne Developer → blitzschnell produktiv
- ✅ Große Refactorings (Multi-File ändern)
- ✅ Bestes Codebase-Verständnis
- ✅ Freelancer / Startups
- ✅ "Agentic-first" Workflow

**Nicht gut für:**
- ❌ Teams mit bestehender VSCode-Config (Migration)
- ❌ Open-Source / lokale Modelle
- ❌ Wenn ihr schon Copilot bezahlt

**Kosten:** $20/Monat (+ API-Kosten separat)

**Hinweis:** Cursor ist not a free baseline. Use it only when the participant already has access.

**Setup:** 5 min (install + login)

**Warum beliebt:** Viele Startup-Gründer benutzen Cursor. High-Productivity-Feel.

---

### 🏄 Windsurf

**Typ:** Eigenständige, IDE, Cursor-Konkurrent

```
Windsurf = Cursor aber mit Fokus auf größere Projekte + Team-Workflows
```

**Best For:**
- ✅ Teams (nicht nur Einzelne)
- ✅ Größere Codebasen
- ✅ "Agent-first" Mentalität
- ✅ Collaborative Sessions

**Nicht gut für:**
- ❌ Wenn Cursor schon kauft
- ❌ Nische, weniger Community als Cursor

**Kosten:** $20/Monat

**Setup:** 5 min

**Verdict:** Anonym-Tipp: Windsurf gewinnt auch "größere Projekt"-Voting. Aber Cursor hat mehr Market Share.

---

### 🌐 Claude Code (Web)

**Typ:** Im Browser → Web UI + optional CLI

```
Browser → Claude Code Web UI → Agent arbeitet direkt im Browser
```

**Best For:**
- ✅ Zero-Setup (Browser öffnen)
- ✅ Zu starke Agenten-Features (MCP, Memory, Skills)
- ✅ Laptop-unabhängig
- ✅ "Denkpause" für komplexe Architektur-Probleme
- ✅ Vollständige Codebase-Exposition möglich

**Nicht gut für:**
- ❌ Keine IDE-Integration (separate Browser-Tab)
- ❌ Bandwidth (große Repos uploaden)
- ❌ Offline Nutzung

**Kosten:** Kostenlos (mit Anthropic API Key)

**Setup:** 2 min

**Why now (2026):** Claude Code ist die "Denkmaschine" für Agenten geworden. Viele Architekten öffnen Claude Code für strategische Probleme (nicht daily coding).

---

### 🚀 Pi Coding Agent (CLI)

**Typ:** Terminal und GUI (pi-gui optional)

```
Terminal: pi solve "Implementiere Dark Mode"
  → Agent lädt, plannt, implementiert
  → Output = Änderungen + PR-Template
```

**Best For:**
- ✅ Scripting / Automation
- ✅ Multi-Provider (Claude + GPT + Qwen + Ollama wechselbar)
- ✅ Lokale Modelle + Memory-Persistence
- ✅ CI/CD Integration (z.B. "after commit, lauf Pi")
- ✅ Wenn du schon im Terminal lebst
- ✅ Team-Dojo (Agents im Repo, nicht in IDE)

**Nicht gut für:**
- ❌ GUI-liebhaber
- ❌ Real-time Feedback (eher batch)

**Kosten:** Kostenlos (open source)

**Setup:** 10 min

**Trends 2026:** Pi ist stark wachsend. Viele DevOps-Teams nutzen Pi in CI-Pipelines.

---

### 💚 Aider

**Typ:** CLI (Text-basiert oder Web-UI optional)

```
Terminal: aider --model claude-3-5-sonnet
  > "Implementier Feature X"
  → Edit Loop direkt auf deinen Dateien
```

**Best For:**
- ✅ Git-Workflow-Liebhaber
- ✅ "Bring your own Model" (Ollama, OpenAI, Anthropic, etc.)
- ✅ Einfachheit (Ein-Command-Setup)
- ✅ Alte Schule / stabiler Code

**Nicht gut für:**
- ❌ Moderne Multi-Agent Features
- ❌ MCP Integration
- ❌ Enterprise-Skalierung

**Kosten:** Kostenlos

**Setup:** 5 min

**Verdict:** Der "zuverlässige Veteran". Wenn's funktionieren muss und nicht fancy sein muss, Aider.

---

### 📦 OpenCode

**Typ:** CLI (Open Source)

```
OpenCode = Aider-meets-modern-agents
```

**Best For:**
- ✅ Open Source Liebhaber
- ✅ Lokale Modelle (Ollama, vLLM)
- ✅ Maximale Anpassbarkeit
- ✅ Self-Hosting

**Nicht gut für:**
- ❌ Community noch klein
- ❌ Weniger poliert als Aider

**Kosten:** Kostenlos

**Setup:** 15 min

---

## Decision Flowchart: Welcher Agent für MICH?

```
       Start: Was brauchst du?
              |
    ┌─────────┼─────────┐
    |         |         |
"Ich muss schnell Ich bin Team- Ich will
Code schreiben" lead oder Open-Source
    |            Architekt    |
    |            |            |
    ├→Cursor   ├→Claude Code├→Aider/Pi/
    │          │(Web UI)    OpenCode
    │          │
    └→Windsurf └→Windsurf
                 oder Pi
```

---

## Praktischer "Entscheidungshelfer"

### Frage 1: Budget?

```
"Wir zahlen gerne"       → Cursor / Windsurf
"Kostenlos"              → Claude Code (Web) / Pi / Aider
"Kostenlos + Enterprise" → OpenCode selbst hosten
```

### Frage 2: Model-Flexibilität?

```
"Nur Claude ist OK"      → Claude Code
"Wir wollen wechseln"    → Pi / Aider / OpenCode (LiteLLM)
```

### Frage 3: Integration in bestehende Workflows?

```
"IDE ist center"         → Cursor / Windsurf / Copilot
"Terminal ist center"    → Pi / Aider / OpenCode  
"Web ist center"         → Claude Code
```

### Frage 4: Team-Größe?

```
"Einzelne Developer"      → Cursor (bestes UI)
"Team 5-20"              → Windsurf / Claude Code + LiteLLM
"Enterprise 100+"        → Claude Code + custom Agent Pipeline + LangGraph
```

---

## Meine (unbaised!) Top Picks für Verschiedene Szenarien

| Use Case | #1 Pick | #2 Alternative | #3 Fallback |
|----------|---------|----------|----------|
| **Schnelle Solo-Productivität** | Cursor | Claude Code | Windsurf |
| **Team mit Refactor-Tasks** | Windsurf | Cursor | Pi (CLI) |
| **Enterprise mit Costed Control** | Claude Code + LangGraph | Pi | OpenCode |
| **Offline / Geheim** | Aider + Ollama | OpenCode + Qwen | Cursor (lokal mit Qwen) |
| **Automation / CI-CD** | Pi | Aider | claude-code-cli |
| **Learning / Tutorial** | Claude Code (Web) | Cursor | Aider |

---

## Glossary: Was bedeuten diese Begriffe wirklich?

- **IDE-Extension:** Läuft in VSCode/IDE (Cursor ist IDE selbst)
- **CLI:** Terminal-Programm (Pi, Aider, OpenCode)
- **Web UI:** Browser (Claude Code)
- **Agent-Mode:** Agent plant mehrere Aktionen auto (nicht Chat)
- **MCP:** Model Context Protocol = Standard für Tool-Integration
- **Bring-your-own-Model:** Du wählst welches Modell (nicht vendor)

---

## Häufige Fehler bei der Auswahl

❌ **"Ich nehme die Teuerste"** → Teuer ≠ Richtig für deinen Use Case  
✅ Besser: Teste Cursor (30 min), Claude Code (sofort kostenlos), Pi (kostenlos)

❌ **"Mein Team braucht alle die gleiche IDE"** → Nicht unbedingt notwendig  
✅ Besser: Hybrid. Ein Dev nutzt Cursor, andere Pi. Beide editieren den gleichen Repo.

❌ **"Vendor Lock-in ist nicht wichtig"** → Oh doch. In 1 Jahr wechselst du Provider.  
✅ Besser: Nutze LiteLLM von Anfang an.

---

## Quick-Start: Probiere gleich 3

```bash
# 1. Claude Code Web (sofort)
# → https://claude.ai → Code Mode

# 2. Pi Coding Agent (10 min lokal)
pip install pi-agent
pi-agent solve "Schreib einen Spike für X"

# 3. Cursor (5 min install)
# → https://cursor.com
# Login, öffne Repo, drücke Cmd/Ctrl+K

Danach: Meinw du hast eine echte Aussage: "Das ist mein Agent."
```

---

**Nächster Schritt:** [Hands-On Lab 1 — Dein erster Agent](../07-hands-on-labs/lab-01-single-agent-ticket.md)
