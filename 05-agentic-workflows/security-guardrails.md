# Security Guard Rails fuer Agent-Tooling

> Ziel: agentic Tools nuetzlich halten, ohne dass sie Vertrauensgrenzen ueberschreiten.

## Prinzip

Agenten sollen genug Zugriff haben, um wirksam zu sein, aber nicht mehr als fuer die aktuelle Aufgabe noetig ist.

## Guard Rails, die durchgesetzt werden muessen

### Secrets standardmaessig nicht lesen
- `.env`, `.env.local`, `.env.*`, Secret Stores oder Credential-Dateien nur lesen, wenn die Aufgabe das explizit verlangt.
- Secrets niemals in Chat, Logs, PRs oder generierter Dokumentation ausgeben.
- Bevorzugt Beispieldateien wie `.env.example` oder Dokumentations-Snippets verwenden.

### Secrets niemals committen
- Jegliches Secret-Material ist fuer Commits tabu.
- Wenn ein Agent Secrets in einem Diff erkennt, stoppen und vor dem Fortfahren redigieren.
- Pre-Commit- oder Repository-Checks nutzen, um versehentliche Secret-Commits zu blockieren.

### Tool-Scope begrenzen
- Datei- und Verzeichnis-Scope einem Whole-Repo-Scan vorziehen.
- Nur die Dateien lesen, die fuer die Aufgabe wirklich noetig sind.
- Shell-Kommandos vermeiden, die breit Umgebungszustand ausgeben.

### Vor destruktiven oder externen Aktionen bestaetigen
- Vor dem Loeschen von Dateien, dem Pushen von Branches, dem Oeffnen von PRs oder dem Aufruf externer APIs mit Produktionsauswirkung nachfragen.
- Vor Aenderungen an Infrastruktur oder Zugangsdaten ausdrueckliche Freigabe verlangen.

### Prompt und Kontext schuetzen
- Keine Secrets in Prompts aufnehmen.
- Einen Agenten nicht auffordern, Zugangsdaten in generierten Code einzufuegen.
- In Workshop-Uebungen redigierte Beispiele verwenden.

## Empfohlene Policy-Beispiele

| Situation | Sichere Policy |
|-----------|----------------|
| Agent braucht Konfiguration | `.env.example` lesen, nicht `.env` |
| Agent braucht API-Zugriff | Temporaere Dev-Credentials nutzen |
| Agent braucht Repo-Kontext | Nur Zieldateien lesen |
| Agent bereitet einen Commit vor | Diff zuerst auf Secrets pruefen |
| Agent muss extern handeln | Bestaetigung einholen |

## Workshop-Faustregel

Wenn dich ein Kommando nervoes machen wuerde, falls es unbeaufsichtigt laeuft, ist es kein sicheres Default fuer einen autonomen Agenten.

## Hands-on-Uebung

Diese Checkliste waehrend eines Labs oder Reviews verwenden:

- [ ] Ist der Agent von Secret-Dateien ferngeblieben?
- [ ] Hat der Agent vor destruktiven Aktionen gefragt?
- [ ] Hat der Agent vermieden, Umgebungsvariablen auszugeben?
- [ ] Ist der Diff innerhalb der vorgesehenen Dateien geblieben?
- [ ] Wuerde ich diese Aufgabe in einem geteilten Repository guten Gewissens erneut ausfuehren?

## Was statt unsicherem Zugriff zu tun ist

- `.env.example` fuer die Struktur verwenden.
- Mock-Credentials fuer Demos verwenden.
- Fixture-Daten statt Produktions-Exporten verwenden.
- Ein eingeschraenktes Test-Token mit Least Privilege nutzen.

## Siehe auch

- [Secure Software Practices](secure-software.md)
- [Feature Factory](feature-factory.md)
