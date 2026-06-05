# Security-Review-Skill-Template

> Portables Workshop-Skill-Template fuer agentic Coding Tools.

## Zweck

Diese Skill immer dann verwenden, wenn eine Aufgabe Code, Doku, Prompts oder Repository-Instruktionen aendert und vor dem Merge einen Security Check braucht.

## Instruktionen

- `.env` oder Secret-Dateien nur lesen, wenn es explizit erforderlich ist.
- Secrets nicht committen und nicht im Output ausgeben.
- Inputs validieren und unsichere Shell-Interpolation vermeiden.
- AuthZ, Datenexposition, Dependencies und Logging pruefen.
- Vor destruktiven oder externen Aktionen stoppen und nachfragen.

## Ausgabeformat

Wenn die Skill verwendet wird, sollte der Agent zurueckgeben:

1. eine kurze Zusammenfassung der Aenderungen
2. eine Checkliste der geprueften Sicherheitsrisiken
3. alle Findings, die noch menschliches Review brauchen

## Checkliste

- [ ] Secrets wurden nicht standardmaessig gelesen
- [ ] Secrets wurden nicht committet
- [ ] Inputs wurden validiert
- [ ] Sensitiver Output wurde nicht geloggt
- [ ] Dependencies wurden geprueft
- [ ] Shell-Kommandos waren sicher
- [ ] Fuer destruktive Aktionen wurde Freigabe eingeholt

## Portabilitaets-Mapping

| Agent | Wo diese Skill typischerweise liegt |
|---|---|
| Cursor | Projektregeln oder Workspace-Instruktionen |
| Claude Code | Skill- oder Instruktionsdatei im Repo |
| Windsurf | Workspace-Instruktionen oder Agent-Settings |
| GitHub Copilot | Repo-Instruktionen wie AGENTS.md oder Copilot-Instruktionen |
| Aider | Prompt-Template oder Repo-Instruktionsdatei |
| Pi / OpenCode | Config- oder Prompt-Datei |
