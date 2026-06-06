# ✋ Lab 1: Chat-with-the-Docs RAG App — Dein erster echter Build

> **Dauer:** 90 Minuten (20 min Setup + 70 min Lab)  
> **Level:** Anfänger  
> **Ziel:** Ein self-contained End-to-End-Projekt mit einem Coding Agent erstellen  
> **Ergebnis:** Laufende Docker-Compose-App mit Upload + RAG-Chat fuer PDF-Dateien

---

## Überblick

Du wirst:

1. ✅ Einen Agenten technisch verifizieren (Hello-World-Scaffold)
2. ✅ Mit einem konkreten Prompt eine vollstaendige Chat-with-the-Docs RAG-App erzeugen
3. ✅ Die App ueber Docker Compose starten und testen
4. ✅ Optional einen Vertiefungspfad waehlen (UI, Security, Architektur, Evaluation)
5. ✅ Checkpoint: Wo war der Agent stark, wo brauchte er Steuerung?

---

## Setup (20 Min)

Vor dem Setup: Eine detaillierte Schritt-fuer-Schritt-Anleitung fuer Registrierung und API Keys findest du hier:

- [API Keys und Registrierung](api-keys-und-registrierung.md)

### Vor dem Start: Harte Voraussetzungen (2 Min Check)

Fuehre diese Checks aus, bevor du den Agenten startest:

```bash
docker --version
docker compose version
node --version
python3 --version
```

Wenn einer der Befehle fehlschlaegt, zuerst Umgebung reparieren. Sonst verlierst du spaeter unnoetig Zeit im Agent-Loop.

### Option A: Dev Container (empfohlen für den Workshop)

**Kostet:** Nichts (nur Free-Tier-Keys)

```bash
# 1) Projekt in VS Code oeffnen
# 2) "Reopen in Container" ausfuehren
# 3) Provider konfigurieren
cp .env.example .env || true
```

### Option B: Aider CLI + Gemini 2.0 Flash

```bash
# 1. API Key erstellen
# https://aistudio.google.com/app/apikey

# 2. Kompatibilitaetsvariablen setzen
export GEMINI_API_KEY="<dein_key>"
export OPENAI_API_KEY="$GEMINI_API_KEY"
export OPENAI_API_BASE="https://generativelanguage.googleapis.com/v1beta/openai"

# 3. Aider starten
aider --model gemini/gemini-2.0-flash
```

### Option C: Freie Alternativen

```bash
# Pi Agent (CLI)
pi --help

# OpenCode (CLI)
opencode --help

# Lokal ohne Cloud
ollama pull qwen3:8b
```

---

## 🎯 Lab Anleitung

### Lernziel fuer dieses Lab

Du baust ein minimales "NotebookLM-light":

- Frontend: Upload von PDF + Chat-UI
- Backend: Parser -> Chunker -> Embeddings -> Retrieval -> Antwort
- Datenhaltung: Vektorindex + Metadaten
- Betrieb: Ein Kommando ueber Docker Compose

### Was Teilnehmende haeufig blockiert

Typische Stolperstellen in diesem Lab sind:

- Unklare "Done"-Definition nach dem Prompt
- Docker/Netzwerk-Probleme zwischen Frontend und Backend
- Fehlender LLM-Key ohne funktionierenden Fallback
- Keine Testdaten (PDF) fuer die Verifikation

Die naechsten Schritte sind deshalb bewusst mit messbaren Checks formuliert.

---

### Schritt 1: Agent-Setup testen mit Hello World (15 Min)

Nutze den folgenden Prompt 1:1. Ziel ist nicht Features, sondern ein schneller Integritaetstest von Agent + Tooling + Build + Docker.

```text
Du arbeitest in einem leeren Projektordner. Bitte scaffold ein minimales Full-Stack "Hello, World" mit Docker Compose.

Technische Vorgaben:
- Backend: FastAPI (Python 3.11), Endpoint GET /api/health liefert JSON {"status":"ok"}
- Frontend: Vite + React + TypeScript, zeigt "Hello Agent Lab"
- Reverse Proxy optional, aber nicht erforderlich
- Docker Compose muss beide Services starten koennen

Abnahmekriterien:
1) docker compose up --build startet ohne Fehler
2) Frontend ist im Browser erreichbar
3) GET /api/health antwortet mit status ok
4) README mit Startanleitung und Troubleshooting

Arbeitsweise:
- Erzeuge alle benoetigten Dateien
- Fuehre Build/Start selbst aus
- Fixe Fehler iterativ selbststaendig
- Gib am Ende eine kurze Zusammenfassung mit den wichtigsten Dateien und Testschritten aus
```

Wenn dieser Schritt fehlschlaegt, repariere zuerst den Setup-Stack. Nicht direkt mit RAG weitermachen.

Verifiziere Schritt 1 explizit mit:

```bash
docker compose up --build -d
curl -s http://localhost:8000/api/health
docker compose ps
```

Erwartung:

- Health antwortet mit `{"status":"ok"}`
- Beide Services sind `Up`

Wenn das nicht klappt, stoppe hier und behebe zuerst Ports, Service-Namen oder Build-Fehler.

---

### Schritt 2: Hauptaufgabe prompten: Chat-with-the-Docs RAG (35 Min)

Nutze den folgenden Prompt als Startpunkt (copy/paste). Er ist absichtlich konkret, damit das Lab self-contained bleibt.

```text
Baue eine lauffaehige "Chat-with-the-Docs" RAG Applikation als Docker-Compose-Projekt.

Zielbild:
- User kann PDF-Dateien im Frontend hochladen
- Backend verarbeitet PDFs in einer RAG Pipeline
- User kann Fragen zu den hochgeladenen Dokumenten stellen
- Antworten enthalten Quellenhinweise (Dateiname + Seitenzahl + Chunk-ID)

Verbindliche technische Anforderungen:
1) Architektur
- Backend: Python 3.11 + FastAPI
- Frontend: React + TypeScript + Vite
- Vektorspeicher: ChromaDB (lokal persistiert)
- Embeddings: sentence-transformers (all-MiniLM-L6-v2) lokal
- LLM-Antworten: austauschbar ueber Provider-Adapter (OpenAI-kompatibel)

2) RAG Pipeline im Backend
- PDF Parser (z. B. pypdf)
- Chunker mit Overlap (konfigurierbar)
- Embedding-Generierung
- Indexierung in Chroma
- Retrieval (Top-k konfigurierbar)
- Antwortgenerierung mit Kontext und Zitaten

3) API-Endpunkte (mindestens)
- POST /api/upload (eine oder mehrere PDFs)
- POST /api/chat (question, optional conversation_id)
- GET /api/documents
- DELETE /api/documents/{id}
- GET /api/health

4) Frontend Features
- Upload-Komponente mit Fortschrittsanzeige
- Dokumentliste mit Loeschfunktion
- Chatfenster mit Rollen (user/assistant)
- Anzeige von Quellen pro Antwort
- Fehlerzustaende (keine Dokumente, API down, leere Frage)

5) Betrieb / DevEx
- docker compose up --build startet alles
- Persistente Volumes fuer Vektordaten
- .env.example mit allen noetigen Variablen
- README mit Quickstart, Architekturueberblick, bekannten Grenzen

6) Qualitaet
- Backend: mindestens Unit-Tests fuer Chunking und Retrieval-Logik
- Lint/Format sinnvoll eingerichtet
- Klare Projektstruktur (backend/, frontend/, docker-compose.yml)

Bitte fuehre die Umsetzung aus, teste die App lokal und behebe Fehler iterativ.
Am Ende liefere:
- kurze Architekturzusammenfassung
- ausgefuehrte Test-/Startkommandos
- offene To-dos als Liste
```

Ergaenze direkt danach diesen Steuerungs-Prompt, damit der Agent nicht "blind" loscodet:

```text
Bevor du Dateien schreibst, liefere zuerst:
1) eine kurze Architektur-Skizze,
2) die geplante Ordnerstruktur,
3) 5 konkrete Milestones mit Abnahmekriterium je Milestone.

Implementiere danach milestone-basiert und warte nach jedem Milestone auf mein "weiter".
```

Hinweis fuer das Modell:
- Wenn kein externer LLM-Key verfuegbar ist, soll ein lokaler Fallback-Modus eingebaut werden (z. B. regelbasierte Antwort mit Retrieved Context), damit die Demo technisch funktioniert.

### Erwartete Mindest-Artefakte nach Schritt 2

Nutze diese Liste fuer ein schnelles Reality-Check:

- `docker-compose.yml`
- `backend/Dockerfile`
- `backend/requirements.txt` oder `pyproject.toml`
- `backend/app/main.py`
- `backend/app/rag/` (parser, chunker, retriever, embeddings)
- `frontend/Dockerfile`
- `frontend/package.json`
- `frontend/src/` (Upload + Chat + Quellenanzeige)
- `.env.example`
- `README.md`

---

### Schritt 3: Agent beobachten und steuern (20 Min)

Beobachte gezielt diese Phasen:

```
Planung -> Scaffold -> Implementierung -> Test -> Fix -> Doku
```

Interventionsbeispiele (wenn noetig):

```text
Bitte trenne Embedding- und LLM-Layer strikter. Ich moechte einen klaren Provider-Adapter.
```

```text
Die Quellenangaben sind zu duenn. Bitte ergaenze Seite, Dateiname und Chunk-ID im Response-Objekt.
```

```text
Docker Compose startet, aber Frontend kann Backend nicht erreichen. Bitte pruefe CORS, Base-URL und Service-Namen im Compose-Netzwerk.
```

```text
Ergaenze einen minimalen E2E-Test fuer Upload -> Frage -> Antwort mit Quelle.
```

---

### Schritt 4: Abnahme-Checkliste (10 Min)

Die Loesung gilt als "done", wenn alles erfuellt ist:

```
☐ docker compose up --build laeuft stabil
☐ PDF Upload funktioniert
☐ Fragen zum Dokument geben plausible Antworten
☐ Antwort enthaelt nachvollziehbare Quellen
☐ Dokumente sind auflistbar und loeschbar
☐ README beschreibt Start + Architektur + Grenzen
☐ Mindestens Basistests sind vorhanden und laufen
```

### Schritt 5: Manuelle End-to-End-Verifikation (10 Min)

Nutze mindestens einen manuellen Testlauf mit echter PDF-Datei:

Optional, falls du keine Test-PDF zur Hand hast:

```bash
curl -L -o ./dein-dokument.pdf https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf
```

```bash
# 1) Stack starten
docker compose up --build -d

# 2) Health pruefen
curl -s http://localhost:8000/api/health

# 3) PDF hochladen (Pfad anpassen)
curl -s -X POST http://localhost:8000/api/upload \
   -F "files=@./dein-dokument.pdf"

# 4) Frage stellen
curl -s -X POST http://localhost:8000/api/chat \
   -H "Content-Type: application/json" \
   -d '{"question":"Worum geht es im Dokument?"}'
```

Erwartung an die Chat-Antwort:

- Eine fachlich plausible Antwort
- Mindestens eine Quelle mit Dateiname, Seite und Chunk-ID

Wenn Quellen fehlen: Retrieval oder Response-Schema nachschaerfen.

### Troubleshooting: Schnelle Diagnosematrix

| Symptom | Wahrscheinliche Ursache | Konkrete Aktion |
|---|---|---|
| Frontend laedt, aber keine API Calls funktionieren | Falsche Backend-URL / CORS | Base-URL im Frontend und CORS in FastAPI pruefen |
| Upload liefert 4xx/5xx | Multipart-Handling oder Dateivalidierung fehlerhaft | Endpoint `POST /api/upload` mit kleinem PDF isoliert testen |
| Antwort ohne Quellen | Retrieval-Objekte werden nicht in Antwort gemappt | Response-Schema + Mapping fuer `sources[]` korrigieren |
| Sehr schlechte Antworten | Chunking/Top-k ungeeignet | Chunk-Groesse, Overlap und Top-k anpassen |
| Compose startet nicht stabil | Build/Port-Konflikte | `docker compose logs`, Ports und Abhaengigkeiten pruefen |

---

## Vertiefungspfade (optional, 20-40 Min)

Waehle einen Pfad nach Interesse.

### Pfad A: UI Fine-Tuning mit MCP Playwright

Ziel:
- Chat UX verbessern (Layout, Lesbarkeit, Quellen-Panel, leere Zustaende)
- Regressionen ueber Browser-Automatisierung absichern

Prompt-Idee:

```text
Nutze MCP Playwright zur UI-Iteration. Erstelle einen kurzen UI-Verbesserungsplan, implementiere 3 konkrete Verbesserungen und validiere sie mit reproduzierbaren Browser-Schritten.
```

### Pfad B: Security Review Agent

Ziel:
- Bedrohungen und Schwachstellen systematisch identifizieren
- Priorisierte Fixes mit Aufwand/Impact ableiten

Prompt-Idee:

```text
Fuehre ein Security Review fuer die Chat-with-the-Docs App durch. Untersuche Upload-Validierung, Prompt-Injection-Risiken, Secret-Handling, AuthN/AuthZ-Luecken, SSRF/Path Traversal und Container-Hardening. Liefere Findings nach Kritikalitaet inkl. konkreter Remediation Steps.
```

### Pfad C: Architektur-Review Agent

Ziel:
- Skalierbarkeit, Wartbarkeit und Betriebsfaehigkeit bewerten

Prompt-Idee:

```text
Fuehre ein Architektur-Review fuer diese RAG-App durch. Bewerte Schichten, Kopplung, Austauschbarkeit von Komponenten, Beobachtbarkeit, Fehlertoleranz und Kostenpfade. Gib 10 priorisierte Architekturverbesserungen mit kurzer Begruendung.
```

### Pfad D: Evaluation und Qualitaet (zusatzliche Idee)

Ziel:
- Nicht nur "funktioniert", sondern messbar "gut"

Moegliche Aufgaben:
- Golden Questions Datensatz mit erwarteten Antworten erstellen
- Retrieval-Metriken erfassen (Hit-Rate, Top-k Treffer)
- Halluzinationsrate manuell in einer kleinen Stichprobe bewerten

### Pfad E: Operations und Observability (zusatzliche Idee)

Ziel:
- App wie ein echtes Produkt betreiben

Moegliche Aufgaben:
- Structured Logging + Request IDs
- Health/Readiness getrennt
- Einfache Metriken (Latenz, Fehlerquote, Token-Verbrauch)

## 📊 Checkpoint: Was ist passiert?

Nach dem Lab, beantworte diese Fragen (5-10 Min):

### Inhaltlich

1. **Wie war die Qualitaet des generierten Code/Text?**
   - [ ] Exzellent (hätte ich selbst nicht besser gemacht)
   - [ ] Gut (minor Fixes notwendig)
   - [ ] OK (funktioniert aber unpoliert)
   - [ ] Schwach (viel Arbeit nötig)

2. **Welche Fehler hat der Agent gemacht?**
   - (Beispiele: API-Vertrag inkonsistent, Retrieval schwach, Docker-Probleme)

3. **Wie viel Feedback brauchte es bis zum Ziel?**
   - Iterationen: 1 / 2 / 3+ / zu viele

### Agentic Performance

4. **Wie war der Planning-Prozess?**
   - War der Plan logisch?
   - Brauchte der Agent Hinweise, oder war er selbstständig?

5. **Fehlertoleranz:**
   - Wenn Builds/Tests fehlschlugen, iterierte der Agent selbst?
   - Oder war Dein Input notwendig?

6. **Reflexion:**
   - Hat der Agent seine Fehler erkannt?
   - Hat er sich selbst korrigiert?

### Deine Erkenntnis

7. **Was hätte dieser Agent besser können?**

8. **Wo brauchtest du noch Input?**

9. **Würdest du diesen Agenten für echte Produktions-Tasks nutzen?**
   - [ ] Ja, sofort
   - [ ] Mit Supervision
   - [ ] Eher nicht

---

## 🎓 Lessons Learned

### Wenn der Agent hervorragend war:

**Du hast gerade erlebt:**
- ✅ Autonomie: Agent brauchte wenig Steuerung
- ✅ Verständnis: Agent analysierte Kontext richtig
- ✅ Qualität: Output war nützlich

**Naechster Gedanke:** Wie skaliert das? -> [MCP Core Concepts](../04-mcp-and-tooling/mcp-core-concepts.md)

### Wenn der Agent falsch war:

**Das ist normal!** Agenten sind keine Magie. Typische Gründe sind:

1. **Spezifikation war zu vage** -> Prompt klarer und testbarer machen
2. **Agent brauchte mehr Context** -> Architektur, Schnittstellen und Abnahmekriterien explizit setzen
3. **Model war nicht gut genug** → Stärkeres Model oder bessere Prompts
4. **Problem steckt im Stack** -> Docker/Netzwerk/Env sauber entkoppeln

**Naechster Gedanke:** Strukturiere die Anforderung besser und messe Qualitaet mit kleinen Evaluationssets.

---

## 🔗 Naechster Schritt

Du hast Lab 1 gemacht. Die Wege:

<details open>
<summary>Route A: Du willst tiefer in RAG-Qualitaet</summary>

Probiere als naechstes:
- Evaluation Dataset mit 20 Fragen
- Vergleich unterschiedlicher Chunking-Strategien
- Vergleich lokaler vs. externer Embeddings

Dann: [MCP Core Concepts](../04-mcp-and-tooling/mcp-core-concepts.md)

</details>

<details>
<summary>Route B: Du willst Multi-Agent verstehen</summary>

-> [Module 6: Multi-Agent-Architekturen](../06-multi-agent-architectures/swarm-patterns.md)  
-> [Orchestrierungs-Frameworks](../06-multi-agent-architectures/orchestration-frameworks.md)

</details>

<details>
<summary>Route C: Du willst Productisierung</summary>

-> [Module 4: MCP Fundamentals](../04-mcp-and-tooling/mcp-core-concepts.md)  
-> Erweitere um Auth, Rate Limits, Audit Logging und Backup/Restore

</details>

---

## 💬 Fragen nach dem Lab?

- Diskutiert in den GitHub Discussions des Repos
- Oder: [FAQ.md](../faq.md)
- Oder: Schreib ein Issue

**Reflektiere:** Was war neu für dich? Was hat dich überrascht?

---

**Du hast gerade agentic Programming in einem realistischen End-to-End-Flow umgesetzt. Glueckwunsch!**
