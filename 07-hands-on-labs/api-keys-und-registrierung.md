# API Keys und Registrierung für Labs

> Ziel: Teilnehmende können innerhalb weniger Minuten die benötigten API Keys selbst erstellen.
> Stand: 2026-06

## Welche Keys brauche ich wirklich?

Für den 2h-Workshop reicht ein Provider:

- Pflicht: Google AI Studio (Gemini API Key)
- Optional: GitHub Models Token
- Optional: OpenRouter API Key
- Optional: Anthropic API Key

Hinweis:
- Für Ollama lokal wird kein API Key benötigt.
- Bitte niemals echte Keys in Prompts, Commits oder Screenshots teilen.

---

## 1) Google AI Studio (Standard für den Workshop)

- Registrierung: https://aistudio.google.com/
- API-Key-Verwaltung direkt: https://aistudio.google.com/app/apikey
- API-Dokumentation (OpenAI-kompatibel): https://ai.google.dev/gemini-api/docs/openai

### Schritt-für-Schritt

1. Öffne https://aistudio.google.com/ und melde dich mit deinem Google-Konto an.
2. Falls abgefragt, bestätige die Nutzungsbedingungen.
3. Öffne https://aistudio.google.com/app/apikey.
4. Klicke auf Create API key.
5. Wähle ein bestehendes Google-Cloud-Projekt oder erstelle ein neues Projekt.
6. Kopiere den erzeugten Key sofort und speichere ihn lokal in deiner .env.

### Eintragen in .env

```bash
GEMINI_API_KEY="PASTE_HERE"
GEMINI_MODEL="gemini-2.0-flash"

OPENAI_API_KEY="${GEMINI_API_KEY}"
OPENAI_API_BASE="https://generativelanguage.googleapis.com/v1beta/openai"
OPENAI_MODEL="gemini-2.0-flash"
```

### Schneller Funktionstest

```bash
export OPENAI_API_KEY="$GEMINI_API_KEY"
export OPENAI_API_BASE="https://generativelanguage.googleapis.com/v1beta/openai"
aider --model gemini/gemini-2.0-flash
```

---

## 2) GitHub Models (freie Alternative mit GitHub-Account)

- Einstieg: https://github.com/marketplace/models
- Token erstellen: https://github.com/settings/tokens
- Dokumentation: https://docs.github.com/en/github-models

### Schritt-für-Schritt

1. Melde dich bei https://github.com/ an.
2. Öffne https://github.com/settings/tokens.
3. Klicke Generate new token (classic) oder Fine-grained token.
4. Vergib einen Namen, setze ein Ablaufdatum und wähle minimale Rechte.
5. Erstelle den Token und kopiere ihn sofort.

### Eintragen in .env

```bash
GITHUB_TOKEN="PASTE_HERE"
GITHUB_MODELS_BASE="https://models.inference.ai.azure.com"
GITHUB_MODELS_MODEL="gpt-4o-mini"
```

### Nutzung mit OpenAI-kompatiblen Clients

```bash
export OPENAI_API_KEY="$GITHUB_TOKEN"
export OPENAI_API_BASE="https://models.inference.ai.azure.com"
```

---

## 3) OpenRouter (freie Community-Modelle)

- Registrierung: https://openrouter.ai/
- Key-Verwaltung: https://openrouter.ai/keys
- Modelle: https://openrouter.ai/models
- Dokumentation: https://openrouter.ai/docs

### Schritt-für-Schritt

1. Öffne https://openrouter.ai/ und registriere dich.
2. Gehe zu https://openrouter.ai/keys.
3. Klicke Create key.
4. Optional: Setze ein Limit/Budget für den Workshop.
5. Kopiere den Key und trage ihn in die .env ein.

### Eintragen in .env

```bash
OPENROUTER_API_KEY="PASTE_HERE"
OPENROUTER_MODEL="qwen/qwen3-coder:free"
```

### Nutzung mit OpenAI-kompatiblen Clients

```bash
export OPENAI_API_KEY="$OPENROUTER_API_KEY"
export OPENAI_API_BASE="https://openrouter.ai/api/v1"
```

---

## 4) Anthropic (optional)

- Registrierung: https://console.anthropic.com/
- API Keys: https://console.anthropic.com/settings/keys
- Doku: https://docs.anthropic.com/

### Schritt-für-Schritt

1. Öffne https://console.anthropic.com/ und registriere dich.
2. Öffne https://console.anthropic.com/settings/keys.
3. Klicke Create key.
4. Kopiere den Key und hinterlege ihn lokal.

### Eintragen in .env

```bash
ANTHROPIC_API_KEY="PASTE_HERE"
```

---

## 5) Ollama lokal (ohne API Key)

- Download: https://ollama.com/download
- Modellbibliothek: https://ollama.com/library

### Schritt-für-Schritt

1. Installiere Ollama über https://ollama.com/download.
2. Starte Ollama lokal.
3. Ziehe ein Modell, zum Beispiel:

```bash
ollama pull qwen3:8b
```

4. Nutze das Modell lokal ohne Cloud-Provider.

---

## Troubleshooting (häufig Probleme)

1. Fehlermeldung 401/403: Key falsch, abgelaufen oder keine Berechtigung.
2. Fehlermeldung 429: Rate-Limit erreicht, kurz warten oder Modell wechseln.
3. Kein Modell verfügbar: Prüfe Modellnamen exakt.
4. Client ignoriert .env: Stelle sicher, dass Variablen im aktuellen Shell-Kontext exportiert sind.

---

## Sicherheits-Hinweise für den Workshop

- Keys nur lokal in .env speichern, nie in .env.example.
- .env nie committen.
- Für Demos nur Test- oder Free-Tier-Keys nutzen.
- Bei Verdacht auf Leck: Key sofort rotieren/revoken.

Siehe auch:
- ../05-agentic-workflows/zugangsdaten-und-agenten.md
