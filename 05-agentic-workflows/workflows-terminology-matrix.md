# Terminologie-Matrix fuer Coding Agents

Diese Tabelle ordnet haeufige Konzepte aus Coding Agents den Begriffen zu, die Teilnehmende in verschiedenen Tools sehen.

| Konzept | Cursor | Claude Code | Windsurf | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|
| Persistente Verhaltensinstruktionen | Rules | Instructions / Skills / Agent-Verhalten | Workspace-Instruktionen | Workspace- oder Plattform-Guidance | Repo-Prompt-Konventionen | Config / Prompt-Policy |
| Wiederverwendbare Aufgabenpakete | Skills | Skills | Workflow-Packs | Kein haeufig gebrandeter Begriff | Prompt-Templates oder Skripte | Templates / Plugins |
| Delegierte Spezialisten-Agenten | Sub-Agents | Sub-Agents | Sekundaere Agenten / Workflow-Helfer | Meist kein First-Class-Konzept | Meist kein First-Class-Konzept | Teilweise Orchestrierungshelfer |
| Memory ueber Aufgaben hinweg | Memory / Kontext | Memory / Persistenz | Workspace-Kontext | Plattform-/Kontext-Memory | Git-Historie / Repo-Kontext | Memory- / Kontext-Funktionen |
| Tool-Zugriffs-Policy | Rules / Settings | Tool-Berechtigungen / Freigaben | Workspace-Policies | Admin-/Workspace-Policy | CLI-Konventionen | Config / Freigaben |
| Input fuer eine einzelne Aufgabe | Chat / Kommando | Chat- / Terminal-Anfrage | Chat-Anfrage | Chat-Anfrage | CLI-Instruktion | CLI- / Chat-Anfrage |
| Systemweite Guidance | Versteckter System Prompt | Versteckter System Prompt | Versteckter Plattform Prompt | Versteckter Plattform Prompt | Prompt-Template | Versteckter Plattform Prompt |

## So verwendest du diese Matrix

- **Rules** fuer Sicherheit und Konsistenz verwenden.
- **Skills** fuer wiederverwendbare Capability verwenden.
- **Sub-Agents** erst einsetzen, wenn die Basisschicht stabil ist.
- **Memory** bewusst und gezielt einsetzen.

## Empfohlene Lehrreihenfolge

1. Terminologie und gemeinsames mentales Modell
2. Rules und Skills
3. Sicherheit und Tool Policy
4. Sub-Agents und Delegation
5. Multi-Agent-Workflows
