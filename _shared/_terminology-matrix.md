# Terminologie-Matrix (Zentrale Referenz)

Diese Datei ist die einzige zentrale Quelle fuer agentenuebergreifende Begriffszuordnung.

## Mapping

| Konzept | Cursor | Claude Code | Devin Desktop (ehemals Windsurf) | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|
| system prompt | versteckte Basis-Instruktionen | versteckte Basis-Instruktionen | versteckte Basis-Instruktionen | versteckte Plattform-Instruktionen | Prompt-Template | versteckte Plattform-Instruktionen |
| user prompt | Chat oder Kommando | Chat- oder Terminal-Anfrage | Chat-Anfrage | Chat-Anfrage | CLI-Instruktion | CLI- oder Chat-Anfrage |
| rules | Workspace- oder Projektregeln | Repo-Instruktionen oder Skill-Guidance | Workspace-Instruktionen | Repo-Instruktionen oder Admin-Guidance | Prompt-Konventionen | Config oder Prompt-Policy |
| skills | wiederverwendbare skill-aehnliche Workflows | Skills | Workflow-Packs | meist nicht so benannt | Prompt-Templates | Templates oder Plugins |
| sub-agents | delegierte Helfer | Sub-Agents | sekundaere Helfer | eingeschraenkt | ungewoehnlich | Orchestrierungshelfer |
| memory | Workspace-Kontext | Memory / Persistenz | Workspace-Kontext | Plattform-Kontext | Git-Historie + Repo-Kontext | Memory- / Kontext-Funktionen |
| tool policy | Workspace-Regeln und Einstellungen | Freigaben und Berechtigungen | Workspace-Policies | Admin- oder Workspace-Policy | Prompt- und Kommando-Konventionen | Config und Freigaben |

## Pflegehinweis

- Aendere Begriffe nur hier und verweise aus anderen Dateien auf diese Matrix.
- Fuer didaktische Erklaerungen soll weiterhin das jeweilige Modul genutzt werden.
