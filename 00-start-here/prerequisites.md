# Voraussetzungen & Setup

> Was du *vor* dem Starten haben solltest

---

## Technische Voraussetzungen

### Unverzichtbar

- ✅ Einen Computer (Mac, Linux, oder Windows) mit Internet
- ✅ Einen Code-Editor installiert (VSCode bevorzugt)
- ✅ `git` installiert (für Versionskontrolle)
- ✅ Python 3.9+ (falls du Terminal Agents testest) — optional
- ✅ 15 GB Speicherplatz (wenn du Ollama lokal nutzen willst)

### Hochgradig empfohlen

- 🔑 Eine API Key von Anthropic (https://claudeapi.com) — kostenlos mit Free Tier
  - **Oder:** Ein kompletter Computer mit GPU (für Ollama lokal)
- 🔗 GitHub Account für die Labs
- ⚡ Gutes Internet (Labs laden Repos hoch)

### Optional

- Dockerinstallationen (falls du MCP Server containerisieren willst)
- Eine IDE deiner Wahl (Cursor, VSCode, Windsurf) — aber nicht notwendig

---

## Konzeptionelle Voraussetzungen

Du solltest bereits wissen... (⚡ oder schnell selbst lernen)

### Must-Haves

- ✅ **Git Basics:** Commits, Branches, PRs verstehen
- ✅ **Programmierung:** Mindestens eine Programmiersprache können
- ✅ **APIs:** Grundkonzept von API Keys & HTTP Requests
- ✅ **Modelle mal gehört haben:** "LLM sind Textvorhersage-Maschinen"

### Nice-to-Have

- 📚 Web-Service Basis (REST, JSON)
- 📚 Devops Konzepte (CI/CD, Docker)—hilft bei Lab 3
- 📚 Python (falls du LiteLLM oder MCP schreiben willst)

---

## Schnell-Setup (5 Minuten)

Wähle einen Weg:

### Weg A: Schnelleinstieg (Cloud + Web)

```bash
# 1. Erstelle API Key
# → https://claudeapi.com (sign up für free tier)
# → Copy API Key

# 2. Setze ENV
export ANTHROPIC_API_KEY="sk-ant-..."

# 3. Öffne dann:
# → https://claude.ai (login)
# → Klick "Code Mode"

# Fertig! Du kannst jetzt Module lesen + Lab 1 machen.
```

⏱️ Zeit: 2 Minuten  
💰 Kosten: $0  
🖥️ Setup-Typ: Cloud

### Weg B: Offline (Lokale GPU)

```bash
# 1. Install Ollama
brew install ollama  # macOS
# oder: https://ollama.ai (Windows)

# 2. Download Modell
ollama pull qwen3.1-coder:7b
# Alternative: ollama pull llama2:7b

# 3. Starte den Server
ollama serve

# 4. In neuem Terminal, teste:
from litellm import completion
response = completion(
    model="ollama/qwen3.1-coder",
    messages=[{"role":"user", "content":"hi"}]
)
print(response)
```

⏱️ Zeit: 15 Minuten (download)  
💰 Kosten: $0  
🖥️ Setup-Typ: Lokal, GPU empfohlen

---

## Wahl: Welches Setup?

| Situation | Empfehlung |
|-----------|-----------|
| "Ich hab keine GPU" | Weg A (Cloud) |
| "Ich hab GPU, will offline" | Weg B (Ollama) |
| "Ich bin unsicher" | Weg A (schneller, risikofrei) |
| "Sicherheit ist kritisch" | Weg B (nichts geht nach außen) |

---

## Troubleshooting Setup

<details>
<summary>API Key funktioniert nicht</summary>

```bash
# Test
echo $ANTHROPIC_API_KEY

# Wenn leer: neu setzen
export ANTHROPIC_API_KEY="sk-ant-..."

# Dann neu testen
curl https://api.anthropic.com/v1/messages \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "content-type: application/json" \
  -d '{"model":"claude-3-5-sonnet","max_tokens":1000,"messages":[{"role":"user","content":"hi"}]}'
```

</details>

<details>
<summary>Ollama lädt, aber lädt und lädt</summary>

```bash
# Das ist normal. Ein 7B Modell ist ~4GB
# Warte einfach. Oder:

netlim qwen3.1-coder:7b  # skip download
# oder
ollama pull llama2:7b    # kleiner (3B)
```

</details>

---

## Nächster Schritt

Sobald du Setup O oder B gemacht hast:

→ [Lernpfad wählen](learning-paths.md)

Los geht's! 🚀
