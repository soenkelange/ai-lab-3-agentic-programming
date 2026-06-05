# Failure Modes in Multi-Agent-Systemen

> Ziel: Typische Ausfaelle frueh erkennen, begrenzen und reproduzierbar beheben.

## Die 7 haeufigsten Failure Modes

1. Rollen-Drift
Ein Agent uebernimmt Aufgaben ausserhalb seines Scopes.

2. Endlosschleifen
Planner/Reviewer schicken sich Aufgaben ohne Abbruchbedingung zurueck.

3. Halluzinierte Abhaengigkeiten
Agent referenziert Dateien oder APIs, die nicht existieren.

4. Ungesicherte Tool-Nutzung
Agent liest sensible Daten oder fuehrt riskante Kommandos aus.

5. Inkonsistente Artefakte
Mehrere Worker erzeugen widerspruechliche Outputs.

6. Silent Failure
Ein Schritt scheitert, aber der Gesamtprozess laeuft scheinbar weiter.

7. Merge trotz kritischer Findings
Review findet Blocker, Gate greift nicht.

## Diagnose-Flow

```mermaid
flowchart TD
    A[Incident entdeckt] --> B{Reproduzierbar?}
    B -- Nein --> C[Mehr Telemetrie/Logs]
    B -- Ja --> D{Scope Problem?}
    D -- Ja --> E[Role Prompt + Tool Rechte schaerfen]
    D -- Nein --> F{Control Flow Problem?}
    F -- Ja --> G[Loop Limits + State Guards]
    F -- Nein --> H[Input/Output Vertrag pruefen]
    C --> H
    E --> I[Regression Test]
    G --> I
    H --> I
    I --> J[Fix ausrollen]
```

## Guardrails pro Failure Mode

| Failure Mode | Signal | Guardrail |
|---|---|---|
| Rollen-Drift | Unpassende Dateiaenderungen | Rolle + Dateibereich-Whitelist |
| Endlosschleife | Viele Iterationen ohne Delta | `max_iterations` + Stagnation Detector |
| Halluzination | Datei/API nicht gefunden | Existence Checks vor der Aktion |
| Unsichere Tool-Nutzung | Secret-Dateien im Access Log | Denylist + manuelle Freigabe |
| Inkonsistente Artefakte | Konflikte bei Fan-In | Schema + Aggregator-Validator |
| Silent Failure | Fehlende Teiloutputs | Verbindlicher Status-Heartbeat |
| Merge trotz Blocker | Kritische Findings ignoriert | Harter Policy Gate |

## Incident-Template

```md
## Incident
- Zeitpunkt:
- Betroffener Workflow:
- Auswirkung:

## Root Cause
- Technisch:
- Prozess:

## Fix
- Sofortmassnahme:
- Dauerhafte Massnahme:

## Prevention
- Neue Guardrail:
- Neuer Test:
```

## Minimum fuer Production Readiness

- Tracing ueber alle Agent-Schritte
- Klare Verantwortlichkeit je Knoten im Workflow
- Harte Stop-Kriterien vor Merge/Deploy
- Replay-faehige Runs fuer Incident Review
- Versionierte Prompts/Rules/Skills

## Naechster Schritt

- Integriere diese Checks in [05-agentic-workflows/security-guardrails.md](../05-agentic-workflows/security-guardrails.md)
- Nutze die Muster aus [Swarm-Patterns](swarm-patterns.md)
