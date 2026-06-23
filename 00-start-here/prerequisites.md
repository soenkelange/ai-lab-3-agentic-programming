# Voraussetzungen und Setup

> Ziel: In unter 10 Minuten sicherstellen, dass das Hands-on reproduzierbar startet.

## Workshop-Standard

- Dauer: 2.5 Stunden
- Default-Agent: Aider
- Default-Provider: Google AI Studio (Free Tier)

Provider- und Agent-Alternativen sind moeglich, solange die Lab-Aufgaben unveraendert umgesetzt werden.

Zentrale Uebersicht:
- [Provider-Optionen](../_shared/_provider-options.md)

## Pre-Lab-Checkliste (Fail-fast)

Fuehre diese Befehle vor dem Lab aus:

```bash
git --version
docker --version
docker compose version
node --version
python3 --version
```

Wenn einer der Checks fehlschlaegt, zuerst Umgebung reparieren und erst dann mit dem Agent starten.

## Pflicht-Voraussetzungen

- Computer mit Internetzugang
- VS Code oder vergleichbarer Editor
- Git, Docker, Docker Compose, Node.js, Python 3.9+
- Schreibzugriff auf das Arbeitsverzeichnis

## Konzeptionelle Mindestbasis

- Verstehen, was ein API Key ist
- Grundidee von HTTP Requests und JSON
- Grundlegende Orientierung in einem Projektordner

## Setup-Varianten

### Variante A (Empfohlen): Aider + Google AI Studio

1. API Key in Google AI Studio erstellen.
2. Lokale .env konfigurieren.
3. Aider mit dem gewaehlten Modell starten.

### Variante B (Alternative): Ollama lokal

1. Ollama installieren.
2. Lokales Modell laden.
3. Agent mit lokalem Modell nutzen.

Hinweis:
- Fuer konkrete Registrierschritte und .env-Beispiele siehe:
  - [API Keys und Registrierung](../07-hands-on-labs/api-keys-und-registrierung.md)

## Sicherheits-Minimum

- .env niemals committen
- API Keys nie in Prompts oder Screenshots teilen
- nur Test- oder Free-Tier-Keys im Workshop verwenden

## Nächster Schritt

- [Lernpfade waehlen](learning-paths.md)
