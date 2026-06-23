# Teilnehmer-Worksheet: Lab 1 (LLM Chat, Bonus RAG)

> Dieses Worksheet fuehrt dich durch den Kernpfad in 95 Minuten.
> 
> Ziel: Mit einem Coding Agent eine lauffaehige Full-Stack LLM-Chat-App bauen.

## 1) Schnellstart-Check (5 Min)

Fuehre aus und hake ab:

```bash
git --version
docker --version
docker compose version
node --version
python3 --version
```

- [ ] Alle Befehle funktionieren
- [ ] API Key oder lokaler Provider ist vorbereitet
- [ ] .env bleibt lokal und wird nicht versioniert

## 2) Setup im Projekt (10 Min)

- [ ] Dev Container gestartet
- [ ] .env aus .env.example erstellt
- [ ] Agent gestartet (Standard: Aider)

Kurznotiz:
- Gewaehlter Agent:
- Gewaehlter Provider:
- Modell:

## 3) Kernprompt (35 Min)

Sende dem Agenten:

```text
Baue eine lauffaehige Full-Stack LLM-Chat-Applikation als Docker-Compose-Projekt.

Technische Vorgaben:
- Backend: Python 3.11 + FastAPI
- Frontend: React + TypeScript + Vite
- API-Endpunkte: GET /api/health, POST /api/chat
- Provider-Adapter: OpenAI-kompatibel
- Betrieb: docker compose up --build
- README mit Quickstart und Architektur

Abnahmekriterien:
1) docker compose up --build startet ohne Fehler
2) GET /api/health liefert status ok
3) Frontend kann Chat-Anfragen senden
4) Antwort wird im UI angezeigt
```

Direkt danach senden:

```text
Bevor du Dateien schreibst, gib bitte:
1) eine Architektur-Skizze,
2) die Ordnerstruktur,
3) 5 Milestones mit je einem Abnahmekriterium.
Implementiere dann milestone-basiert.
```

## 4) Steuerung waehrend der Umsetzung (20 Min)

Wenn der Agent unklar arbeitet, nutze diese Eingriffe:

```text
Bitte reduziere den Umfang auf den Kernpfad (Health + Chat + Compose) und verschiebe Extras in To-dos.
```

```text
Bitte behebe nur den aktuellen Build-Fehler und erklaere kurz die Ursache.
```

```text
Bitte trenne API-Route, Chat-Service und Provider-Adapter in eigene Module.
```

## 5) Abnahme (10 Min)

```bash
docker compose up --build -d
curl -s http://localhost:8000/api/health
curl -s http://localhost:5173 | head -n 20
```

- [ ] Health ist erfolgreich
- [ ] Frontend ist erreichbar
- [ ] Chat-Endpunkt antwortet plausibel
- [ ] README beschreibt Start und Grenzen

## 6) Reflexion (5 Min)

Kurzantworten:
- Wo war der Agent am staerksten?
- Wo brauchtest du menschliche Steuerung?
- Was waere dein naechster Produktionsschritt?

## 7) Bonus-Challenge RAG (optional, 20-30 Min)

Nur wenn Kern abgeschlossen:
- [ ] PDF Upload-Endpunkt
- [ ] Retrieval mit Quellenhinweisen
- [ ] Antwort enthaelt Dateiname, Seite, Chunk-ID

## Ergebnisdokumentation

Notiere am Ende:
- Laufende Dienste:
- Wichtigster Fix:
- Offene To-dos:
