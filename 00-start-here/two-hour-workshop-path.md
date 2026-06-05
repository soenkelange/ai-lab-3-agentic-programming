# Zwei-Stunden-Workshoppfad — Free-First, agentenuebergreifend nutzbar

> Ziel: Ein klarer Setup- und Uebungspfad fuer 2 Stunden, der Skills, Rules und sichere Nutzung vor Sub-Agents vermittelt.

## Primaerer Workshop-Agent

**Default workshop agent: Aider or OpenCode with a local model**

Warum Free-First:
- Jede teilnehmende Person kann dasselbe Setup ohne bezahlte Lizenz nutzen.
- Der Workflow bleibt in einer 2-Stunden-Session praktisch.
- Dieselben Instruktionsinhalte lassen sich auf Cursor, Claude Code, Windsurf, Copilot, Aider und Pi abbilden.

Wenn Teilnehmende bereits Cursor haben, koennen sie das Cursor-Mapping in den Tabellen unten nutzen.
Ansonsten gilt der freie Pfad, und dieselben Ideen werden in andere Tools uebersetzt.

---

## 0:00–0:10 Setup

- Repo in Aider oder OpenCode oeffnen
- [Agent Terminology](../05-agentic-workflows/agent-terminology.md) lesen
- [Security Review Skill Template](../assets/templates/security-review-skill.md) oeffnen
- Entscheiden, wo die wiederverwendbare Instruktion im Agenten lebt

Ergebnis:
- Es ist klar, welches Konzept zu Rules, Skills, Sub-Agents und Memory gehoert.

---

## 0:10–0:30 Skill erstellen

Eine wiederverwendbare Skill- oder Rule-Sammlung namens `security-review` anlegen.

Mindestinhalt:
- `.env` standardmaessig nie lesen
- niemals Secrets committen
- Inputs, AuthZ, Logging und Dependencies pruefen
- vor destruktiven Aktionen nachfragen

Dieses Mapping verwenden:

| Agent | What to create |
|---|---|
| Cursor | a project rule or workspace instruction |
| Claude Code | a skill or instruction file in the repo |
| Windsurf | a workspace instruction |
| GitHub Copilot | repo instructions such as AGENTS.md |
| Aider | a prompt template or repo note |
| Pi / OpenCode | config or prompt file |

Ergebnis:
- Eine wiederverwendbare Instruktionsdatei oder Rule, die spaeter erneut genutzt werden kann.

---

## 0:30–1:00 Skill auf eine echte Aufgabe anwenden

Aufgabe:
- Den Agenten bitten, [Security Guard Rails](../05-agentic-workflows/security-guardrails.md) zu reviewen
- Ihn bitten, einen Abschnitt von [Secure Software Practices](../05-agentic-workflows/secure-software.md) zu verbessern
- Verlangen, dass der Agent erklaert, welche Security Checks er angewendet hat

Rahmenbedingungen:
- Der Agent darf `.env` nicht lesen.
- Secret-Material darf nicht in Prompts vorkommen.
- Unverwandtes Refactoring ist nicht erlaubt.

Ergebnis:
- Eine konkrete Verbesserung im Repository
- Eine kurze Security-Review-Zusammenfassung

---

## 1:00–1:20 Agentenuebergreifendes Mapping zeigen

Dieselbe Skill in anderen Tools vergleichen.

| Concept | Cursor | Claude Code | Windsurf | Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|
| persistent instructions | rules | skill/instruction file | workspace instruction | repo instruction | prompt template | config/prompt |
| reusable capability | skill-like workflow | skill | workflow pack | instruction block | script/prompt | template |
| delegated helper | sub-agent | sub-agent | secondary helper | limited | uncommon | orchestration helper |

Hinweis zum Cursor-Mapping: Diese Spalte nur verwenden, wenn Teilnehmende bereits eine Cursor-Lizenz oder Trial haben; sie ist nicht die freie Baseline.

Ergebnis:
- Die Teilnehmenden koennen dieselbe Idee in mehr als einem Tool-Vokabular erklaeren.

---

## 1:20–1:45 Workflow absichern

Eine weitere Guard Rail ergaenzen:
- `.env` nur lesen, wenn es explizit erforderlich ist
- niemals Secrets committen
- bei destruktiven Aktionen bis zur Freigabe stoppen

Danach den Agenten dieselbe Aufgabe mit aktiver Guard Rail erneut ausfuehren lassen.

Ergebnis:
- Ein sichererer Workflow mit demselben funktionalen Ergebnis

---

## 1:45–2:00 Checkpoint

Diese Fragen beantworten:
- Was ist der Unterschied zwischen einer Rule und einer Skill?
- Welcher Teil gehoert zum Agenten, und welcher Teil gehoert ins Repo?
- Was wuerde sich aendern, wenn statt Cursor Claude Code oder Aider genutzt wuerde?
- Welches Sicherheitsrisiko wuerde dieser Workflow erzeugen, wenn er unkontrolliert bliebe?

Endergebnis:
- Ein wiederverwendbares Instruktionsartefakt
- Eine abgeschlossene Aufgabe
- Eine agentenuebergreifende Vokabelkarte
