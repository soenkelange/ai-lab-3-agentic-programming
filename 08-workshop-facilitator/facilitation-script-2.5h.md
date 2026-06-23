# Facilitation-Skript (2.5h Standard)

> Ziel: Eine heterogene Gruppe von Einsteiger:innen bis IT-Enthusiast:innen sicher durch Theorie + Hands-on fuehren.
> 
> Standard-Track: Aider + Google AI Studio (Free Tier)

## Rollenbild fuer Trainer:innen

- Du moderierst, nicht nur demonstrierst.
- Du priorisierst Lernfortschritt vor Feature-Fuelle.
- Du stoppst frueh bei Setup-Fehlern (Fail-fast).

## Zeitplan mit Moderations-Textbausteinen

## 0:00-0:05 Begruessung und Zielbild

Trainer sagt:
- Heute bauen wir mit einem Coding Agent eine Full-Stack LLM-Chat-App.
- Das ist der Meta-Moment: Wir nutzen KI, um KI-Software zu bauen.
- RAG mit PDF/EPUB ist eine Bonus-Challenge, nicht Pflicht.

Abnahme zu diesem Zeitpunkt:
- Alle kennen Ziel, Umfang und Zeitrahmen.

## 0:05-0:20 Grundlagen: Model vs Agent

Inhalt:
- Unterschied zwischen Textgenerierung und Handlungsfaehigkeit.
- Warum Agenten ueber Tools konkret Mehrwert liefern.

Checkfrage:
- Welche Aufgabe in eurem Alltag waere ein Kandidat fuer Agentic Workflow?

## 0:20-0:30 Grundlagen: Agent vs Framework vs Orchestrator

Inhalt:
- Coding Agent: loest konkrete Coding-Aufgaben.
- Agent Orchestrator: koordiniert mehrere Agenten/Sessions.
- Multi-Agent-Framework: wird als System im Code gebaut.

Checkfrage:
- Welche Ebene benoetigt ihr heute im Workshop wirklich?

## 0:30-0:40 Setup und Guardrails

Pflichtchecks gemeinsam:

```bash
git --version
docker --version
docker compose version
node --version
python3 --version
```

Guardrails (verbindlich):
- Keine Secrets in Prompts.
- .env nicht committen.
- Bei destruktiven Aktionen explizit bestaetigen.

Intervention bei Problemen:
- Wenn ein Check fehlschlaegt, keine inhaltliche Hektik. Erst Umgebung fixen.

## 0:40-1:45 Hands-on Kern (LLM-Chat)

Ablauf:
1. Agent verifiziert Stack mit kurzem Hello-World-Scaffold.
2. Agent plant Architektur und Milestones.
3. Agent implementiert Kernpfad (Chat + Health + Docker Compose).
4. Gruppe prueft Abnahmekriterien.

Trainer-Signale im Raum:
- Wenn Teams stecken: Prompt praezisieren statt neu starten.
- Wenn Agent driftet: Umfang auf Kernanforderungen zuruecksetzen.
- Wenn Teams schnell sind: Stabilisierung und Tests vor Bonus.

Interventionsprompts:
- Formuliere zuerst 5 Milestones mit je einem Abnahmekriterium.
- Trenne Chat-Service, API-Route und Provider-Adapter klar.
- Fixiere Fehler iterativ und dokumentiere kurz die Ursache.

## 1:45-2:05 Wrap-up und Transfer

Checkpoint:
- Was hat der Agent gut gemacht?
- Wo war menschliche Steuerung entscheidend?
- Welche Guardrail war heute am wichtigsten?

Transferfrage:
- Welches echte Team-Ticket koennte morgen mit demselben Muster gestartet werden?

## 2:05-2:30 Optionaler Bonus: RAG (PDF/EPUB)

Nur wenn Kern laeuft:
- Upload-Endpunkt
- Chunking + Retrieval
- Quellenhinweise in Antworten

Hinweis:
- Bonus darf den Kernabschluss nicht gefaehrden.

## Eskalationsmatrix fuer typische Stoerungen

1. API Fehler (401/403): Key und Base-URL pruefen.
2. Container startet nicht: Build-Logs lesen, einen Fehler nach dem anderen.
3. Frontend erreicht Backend nicht: Service-Name, Port, CORS pruefen.
4. Agent produziert zu viel auf einmal: milestone-basiertes Arbeiten erzwingen.

## Minimaler Erfolg fuer alle Teilnehmenden

- Docker Compose laeuft stabil.
- /api/health antwortet erfolgreich.
- Chat-Frontend sendet Anfrage und zeigt Antwort.
- Team kann den Ablauf Plan -> Build -> Test -> Fix erklaeren.
