# Security-Review-Skill-Template

> Portables Workshop-Skill-Template für agentic Coding Tools.

## Zweck

Diese Skill immer dann verwenden, wenn eine Aufgabe Code, Doku, Prompts oder Repository-Instruktionen ändert und vor dem Merge einen Security Check braucht.

## Instruktionen

- `.env` oder Secret-Dateien nur lesen, wenn es explizit erforderlich ist.
- Secrets nicht committen und nicht im Output ausgeben.
- Inputs validieren und unsichere Shell-Interpolation vermeiden.
- AuthZ, Datenexposition, Dependencies und Logging prüfen.
- Vor destruktiven oder externen Aktionen stoppen und nachfragen.

## Ausgabeformat

Wenn die Skill verwendet wird, sollte der Agent zurückgeben:

1. eine kurze Zusammenfassung der Änderungen
2. eine Checkliste der geprüften Sicherheitsrisiken
3. alle Findings, die noch menschliches Review brauchen

## Checkliste

- [ ] Secrets wurden nicht standardmäßig gelesen
- [ ] Secrets wurden nicht committet
- [ ] Inputs wurden validiert
- [ ] Sensitiver Output wurde nicht geloggt
- [ ] Dependencies wurden geprüft
- [ ] Shell-Kommandos waren sicher
- [ ] für destruktive Aktionen wurde Freigabe eingeholt

## Portabilitäts-Mapping

| Agent | Wo diese Skill typischerweise liegt |
|---|---|
| Cursor | Projektregeln oder Workspace-Instruktionen |
| Claude Code | Skill- oder Instruktionsdatei im Repo |
| Windsurf | Workspace-Instruktionen oder Agent-Settings |
| GitHub Copilot | Repo-Instruktionen wie AGENTS.md oder Copilot-Instruktionen |
| Aider | Prompt-Template oder Repo-Instruktionsdatei |
| Pi / OpenCode | Config- oder Prompt-Datei |
