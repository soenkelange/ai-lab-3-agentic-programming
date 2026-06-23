# Workshop Rules und Skills (2 Stunden)

> Ziel: Ein klarer Setup- und Uebungspfad fuer 2 Stunden, der Skills, Rules und sichere Nutzung vor Sub-Agents vermittelt.

## Einordnung

Dieser Pfad ist eine Governance-Vertiefung.
Der kanonische Hauptpfad fuer den Einstieg bleibt in [learning-paths](learning-paths.md) als 2,5h-Standard definiert.

## Primaerer Workshop-Agent

Empfohlener Workshop-Agent: Aider oder OpenCode mit lokalem oder cloudbasiertem Modell.

Warum Free-First:
- Jede teilnehmende Person kann dasselbe Setup ohne bezahlte Lizenz nutzen.
- Der Workflow bleibt in einer 2-Stunden-Session praktisch.
- Dieselben Instruktionsinhalte lassen sich auf Cursor, Claude Code, Devin Desktop, Copilot, Aider und Pi abbilden.

## 0:00-0:10 Setup

- Repo in Aider oder OpenCode oeffnen
- Agent-Terminologie lesen
- Security-Review-Skill-Template oeffnen
- Entscheiden, wo wiederverwendbare Instruktionen im Agenten leben

Ergebnis:
- Es ist klar, welches Konzept zu Rules, Skills, Sub-Agents und Memory gehoert.

## 0:10-0:30 Skill erstellen

Eine wiederverwendbare Skill- oder Rule-Sammlung namens security-review anlegen.

Mindestinhalt:
- .env standardmaessig nie lesen
- niemals Secrets committen
- Inputs, AuthZ, Logging und Dependencies pruefen
- vor destruktiven Aktionen nachfragen

## 0:30-1:00 Skill auf echte Aufgabe anwenden

Aufgabe:
- Security Guardrails reviewen
- Abschnitt aus Secure Software verbessern
- Agent soll erklaeren, welche Checks angewendet wurden

Rahmenbedingungen:
- Agent darf .env nicht lesen
- Secret-Material darf nicht in Prompts vorkommen
- unverwandtes Refactoring ist nicht erlaubt

## 1:00-1:20 Agentenuebergreifendes Mapping

Nutze die zentrale Matrix:
- [Terminologie-Matrix](../_shared/_terminology-matrix.md)

## 1:20-1:45 Workflow absichern

Eine weitere Guardrail ergaenzen:
- .env nur lesen, wenn explizit erforderlich
- niemals Secrets committen
- bei destruktiven Aktionen bis Freigabe stoppen

Danach dieselbe Aufgabe erneut mit aktiver Guardrail ausfuehren.

## 1:45-2:00 Checkpoint

Fragen:
- Was ist der Unterschied zwischen Rule und Skill?
- Welcher Teil gehoert in den Agenten, welcher ins Repo?
- Was aendert sich zwischen Aider, Copilot und Claude Code?
- Welches Risiko entsteht ohne Guardrails?

Endergebnis:
- Ein wiederverwendbares Instruktionsartefakt
- Eine abgeschlossene Aufgabe
- Eine agentenuebergreifende Vokabelkarte
