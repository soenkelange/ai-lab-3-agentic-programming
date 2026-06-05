# Zugangsdaten und Agenten

> Ziel: Ein sicheres, praktisches Model für den Umgang von Agenten mit Zugangsdaten in lokaler Entwicklung, CI/CD und Team-Umgebungen definieren.

## Warum dieses Thema zentral ist

Agenten arbeiten schneller als Menschen und greifen oft auf mehr Tools gleichzeitig zu. Genau deshalb müssen Zugangsdaten enger gesteuert werden als in klassischen manuellen Workflows.

Die Grundregel lautet:

- Agenten erhalten nur die minimalen Rechte für die aktuelle Aufgabe.
- Secrets werden nie Teil des Prompts, des Commits oder des Review-Artefakts.
- Zugriff wird zeitlich, fachlich und technisch begrenzt.

---

## Bedrohungsmodell in Kurzform

Risiken entstehen vor allem in vier Situationen:

1. Ein Agent liest versehentlich `.env`, Secret Stores oder Credential-Dateien.
2. Ein Agent schreibt Zugangsdaten in Code, Logs, PR-Beschreibungen oder generierte Dokumentation.
3. Ein Agent nutzt zu weit gefasste Tokens für externe Systeme.
4. Ein Agent führt Aktionen gegen produktive Systeme ohne klare Freigabe aus.

---

## Empfohlenes Zugangsmodell

### 1. Least Privilege immer als Default

- Tokens nur für genau den benötigten Scope ausstellen.
- Schreibrechte nur vergeben, wenn die Aufgabe das zwingend braucht.
- Produktionsrechte nie als Standard in Entwicklungs-Workflows verfügbar machen.

### 2. Kurzlebige Zugangsdaten bevorzugen

- Kurzlebige Tokens statt langlebiger API-Keys verwenden.
- Rotation automatisieren, wo möglich.
- Widerruf muss jederzeit schnell möglich sein.

### 3. Trennung nach Umgebung

| Umgebung | Empfehlung |
|---|---|
| Lokal | Mock-Credentials oder eingeschränkte Dev-Tokens |
| CI/CD | Kurzlebige Service Credentials mit eng begrenztem Scope |
| Shared Team Environment | Rollenbasierte Freigaben plus Audit-Logging |
| Produktion | Keine autonome Standardfreigabe; nur über explizite Gates |

### 4. Trennung nach Aktionstyp

| Aktion | Erlaubnis-Model |
|---|---|
| Lesen von Doku oder Beispieldateien | Default erlaubt |
| Lesen sensibler Konfigurationsdateien | Nur explizit freigegeben |
| Schreiben in Arbeitsdateien | Erlaubt innerhalb klarer Dateigrenzen |
| Push, PR, externe API-Calls | Freigabe vor Ausführung |
| Produktionsänderungen | Nur manuell oder über harte Policy Gates |

---

## Sichere Muster für lokale Entwicklung

- `.env.example` statt `.env` als Strukturquelle verwenden.
- Beispiele und Fixtures statt echter Produktivdaten nutzen.
- Lokale Agenten nur mit Dev- oder Test-Zugangsdaten starten.
- Niemals rohe Zugangsdaten in Prompt-Beispiele kopieren.

### Do

- "Nutze die Struktur aus `.env.example` und beschreibe, welche Variablen benötigt werden."
- "Arbeite mit einem eingeschränkten Test-Token für die Sandbox."

### Don't

- "Öffne bitte meine `.env` und baue damit die Integration fertig."
- "Nimm diesen echten API-Key und schreibe ihn in die Config-Datei."

---

## Sichere Muster für CI/CD

- Tokens nur zur Laufzeit injizieren, nie im Repository speichern.
- Separate Credentials für Lesen, Testen, Deployen und Administrativeingriffe nutzen.
- Secret Scanning als Pflichtschritt in der Pipeline verankern.
- Agentenjobs mit klarer Dateigrenze und Schrittgrenze laufen lassen.

### Mindestanforderungen für agentische Pipelines

- Secret Scanning vor Merge
- Audit-Log für externe Aktionen
- Freigabe für destruktive Schritte
- Trennung zwischen Build-, Review- und Deploy-Rechten

---

## Sichere Muster für Team-Umgebungen

- Rollenbasierte Zugriffe statt geteilter Allzweck-Tokens
- Keine Team-Secrets in Chatverläufen oder Prompt-Sammlungen
- Dokumentierte Eskalation für benötigte Sonderrechte
- Zentral definierte Guard Rails in Repo-Instruktionen oder Workspace-Policies

---

## Praktische Guard Rails für Agenten

Diese Regeln sollten für alle toolfähigen Agenten gelten:

- Lies `.env`, Secret-Dateien oder Credential Stores nie standardmäßig.
- Gib keine Zugangsdaten in Chat, Logs, PRs oder generierter Doku aus.
- Frage vor Push, PR, Branch-Erstellung oder externen API-Calls nach.
- Stoppe bei Infrastruktur- oder Produktionsbezug bis zur ausdrücklichen Freigabe.
- Redigiere gefundene Secrets sofort aus Diff, Output und Kontext.

---

## Checkliste für Reviews

- [ ] Wurde nur mit minimalen Rechten gearbeitet?
- [ ] Wurden keine Secrets gelesen, obwohl sie nicht benötigt wurden?
- [ ] Wurden keine Secrets ausgegeben oder committet?
- [ ] Sind Tokens kurzlebig oder klar widerrufbar?
- [ ] Gibt es für externe Aktionen einen Freigabeschritt?
- [ ] Ist der Workflow zwischen lokal, CI/CD und Produktion sauber getrennt?

---

## Workshop-Übung

### Aufgabe

Nimm einen bestehenden Lab- oder Workflow-Schritt und beantworte:

1. Welche Zugangsdaten könnte der Agent hier potenziell sehen?
2. Welche davon braucht er wirklich?
3. Welche können durch `.env.example`, Fixtures oder Test-Tokens ersetzt werden?
4. Wo muss ein Freigabeschritt eingebaut werden?

### Erwartetes Ergebnis

- Eine Liste benötigter vs. nicht benötigter Secrets
- Eine sichere Alternative für lokale Entwicklung
- Ein Guard-Rail-Vorschlag für denselben Workflow in CI/CD

---

## Empfohlene Standardformulierung für Repo-Regeln

```md
- Lies keine `.env`- oder Secret-Dateien ohne explizite Anforderung.
- Gib keine Zugangsdaten in Output, Commits oder Dokumentation aus.
- Verwende für Demos und Tests nur eingeschränkte oder simulierte Credentials.
- Frage vor externen oder destruktiven Aktionen immer nach Freigabe.
```

---

## Siehe auch

- [security-guardrails.md](security-guardrails.md)
- [secure-software.md](secure-software.md)
- [../assets/templates/security-review-skill.md](../assets/templates/security-review-skill.md)