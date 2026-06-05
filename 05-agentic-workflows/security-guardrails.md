# Security Guard Rails für Agent-Tooling

> Ziel: agentic Tools nützlich halten, ohne dass sie Vertrauensgrenzen überschreiten.

## Prinzip

Agenten sollen genug Zugriff haben, um wirksam zu sein, aber nicht mehr als für die aktuelle Aufgabe nötig ist.

## Guard Rails, die durchgesetzt werden müssen

### Secrets standardmäßig nicht lesen
- `.env`, `.env.local`, `.env.*`, Secret Stores oder Credential-Dateien nur lesen, wenn die Aufgabe das explizit verlangt.
- Secrets niemals in Chat, Logs, PRs oder generierter Dokumentation ausgeben.
- Bevorzugt Beispieldateien wie `.env.example` oder Dokumentations-Snippets verwenden.

### Secrets niemals committen
- Jegliches Secret-Material ist für Commits tabu.
- Wenn ein Agent Secrets in einem Diff erkennt, stoppen und vor dem Fortfahren redigieren.
- Pre-Commit- oder Repository-Checks nutzen, um versehentliche Secret-Commits zu blockieren.

### Tool-Scope begrenzen
- Datei- und Verzeichnis-Scope einem Whole-Repo-Scan vorziehen.
- Nur die Dateien lesen, die für die Aufgabe wirklich nötig sind.
- Shell-Kommandos vermeiden, die breit Umgebungszustand ausgeben.

### Vor destruktiven oder externen Aktionen bestätigen
- Vor dem Löschen von Dateien, dem Pushen von Branches, dem Öffnen von PRs oder dem Aufruf externer APIs mit Produktionsauswirkung nachfragen.
- Vor Änderungen an Infrastruktur oder Zugangsdaten ausdrückliche Freigabe verlangen.

### Prompt und Kontext schützen
- Keine Secrets in Prompts aufnehmen.
- Einen Agenten nicht auffordern, Zugangsdaten in generierten Code einzufügen.
- In Workshop-Übungen redigierte Beispiele verwenden.

## Empfohlene Policy-Beispiele

| Situation | Sichere Policy |
|-----------|----------------|
| Agent braucht Konfiguration | `.env.example` lesen, nicht `.env` |
| Agent braucht API-Zugriff | Temporäre Dev-Credentials nutzen |
| Agent braucht Repo-Kontext | Nur Zieldateien lesen |
| Agent bereitet einen Commit vor | Diff zuerst auf Secrets prüfen |
| Agent muss extern handeln | Bestätigung einholen |

## Workshop-Faustregel

Wenn dich ein Kommando nervös machen würde, falls es unbeaufsichtigt läuft, ist es kein sicheres Default für einen autonomen Agenten.

## Hands-on-Übung

Diese Checkliste während eines Labs oder Reviews verwenden:

- [ ] Ist der Agent von Secret-Dateien ferngeblieben?
- [ ] Hat der Agent vor destruktiven Aktionen gefragt?
- [ ] Hat der Agent vermieden, Umgebungsvariablen auszugeben?
- [ ] Ist der Diff innerhalb der vorgesehenen Dateien geblieben?
- [ ] Würde ich diese Aufgabe in einem geteilten Repository guten Gewissens erneut ausführen?

## Was statt unsicherem Zugriff zu tun ist

- `.env.example` für die Struktur verwenden.
- Mock-Credentials für Demos verwenden.
- Fixture-Daten statt Produktions-Exporten verwenden.
- Ein eingeschränktes Test-Token mit Least Privilege nutzen.

## Siehe auch

- [Secure Software Practices](secure-software.md)
- [Feature Factory](feature-factory.md)
