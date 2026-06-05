# Zugangsdaten und Agenten

> Ziel: Ein sicheres, praktisches Modell fuer den Umgang von Agenten mit Zugangsdaten in lokaler Entwicklung, CI/CD und Team-Umgebungen definieren.

## Warum dieses Thema zentral ist

Agenten arbeiten schneller als Menschen und greifen oft auf mehr Tools gleichzeitig zu. Genau deshalb muessen Zugangsdaten enger gesteuert werden als in klassischen manuellen Workflows.

Die Grundregel lautet:

- Agenten erhalten nur die minimalen Rechte fuer die aktuelle Aufgabe.
- Secrets werden nie Teil des Prompts, des Commits oder des Review-Artefakts.
- Zugriff wird zeitlich, fachlich und technisch begrenzt.

---

## Bedrohungsmodell in Kurzform

Risiken entstehen vor allem in vier Situationen:

1. Ein Agent liest versehentlich `.env`, Secret Stores oder Credential-Dateien.
2. Ein Agent schreibt Zugangsdaten in Code, Logs, PR-Beschreibungen oder generierte Dokumentation.
3. Ein Agent nutzt zu weit gefasste Tokens fuer externe Systeme.
4. Ein Agent fuehrt Aktionen gegen produktive Systeme ohne klare Freigabe aus.

---

## Empfohlenes Zugangsmodell

### 1. Least Privilege immer als Default

- Tokens nur fuer genau den benoetigten Scope ausstellen.
- Schreibrechte nur vergeben, wenn die Aufgabe das zwingend braucht.
- Produktionsrechte nie als Standard in Entwicklungs-Workflows verfuegbar machen.

### 2. Kurzlebige Zugangsdaten bevorzugen

- Kurzlebige Tokens statt langlebiger API-Keys verwenden.
- Rotation automatisieren, wo moeglich.
- Widerruf muss jederzeit schnell moeglich sein.

### 3. Trennung nach Umgebung

| Umgebung | Empfehlung |
|---|---|
| Lokal | Mock-Credentials oder eingeschraenkte Dev-Tokens |
| CI/CD | Kurzlebige Service Credentials mit eng begrenztem Scope |
| Shared Team Environment | Rollenbasierte Freigaben plus Audit-Logging |
| Produktion | Keine autonome Standardfreigabe; nur ueber explizite Gates |

### 4. Trennung nach Aktionstyp

| Aktion | Erlaubnis-Modell |
|---|---|
| Lesen von Doku oder Beispieldateien | Default erlaubt |
| Lesen sensibler Konfigurationsdateien | Nur explizit freigegeben |
| Schreiben in Arbeitsdateien | Erlaubt innerhalb klarer Dateigrenzen |
| Push, PR, externe API-Calls | Freigabe vor Ausfuehrung |
| Produktionsaenderungen | Nur manuell oder ueber harte Policy Gates |

---

## Sichere Muster fuer lokale Entwicklung

- `.env.example` statt `.env` als Strukturquelle verwenden.
- Beispiele und Fixtures statt echter Produktivdaten nutzen.
- Lokale Agenten nur mit Dev- oder Test-Zugangsdaten starten.
- Niemals rohe Zugangsdaten in Prompt-Beispiele kopieren.

### Do

- "Nutze die Struktur aus `.env.example` und beschreibe, welche Variablen benoetigt werden."
- "Arbeite mit einem eingeschraenkten Test-Token fuer die Sandbox."

### Don't

- "Oeffne bitte meine `.env` und baue damit die Integration fertig."
- "Nimm diesen echten API-Key und schreibe ihn in die Config-Datei."

---

## Sichere Muster fuer CI/CD

- Tokens nur zur Laufzeit injizieren, nie im Repository speichern.
- Separate Credentials fuer Lesen, Testen, Deployen und Administrativeingriffe nutzen.
- Secret Scanning als Pflichtschritt in der Pipeline verankern.
- Agentenjobs mit klarer Dateigrenze und Schrittgrenze laufen lassen.

### Mindestanforderungen fuer agentische Pipelines

- Secret Scanning vor Merge
- Audit-Log fuer externe Aktionen
- Freigabe fuer destruktive Schritte
- Trennung zwischen Build-, Review- und Deploy-Rechten

---

## Sichere Muster fuer Team-Umgebungen

- Rollenbasierte Zugriffe statt geteilter Allzweck-Tokens
- Keine Team-Secrets in Chatverlaeufen oder Prompt-Sammlungen
- Dokumentierte Eskalation fuer benoetigte Sonderrechte
- Zentral definierte Guard Rails in Repo-Instruktionen oder Workspace-Policies

---

## Praktische Guard Rails fuer Agenten

Diese Regeln sollten fuer alle toolfaehigen Agenten gelten:

- Lies `.env`, Secret-Dateien oder Credential Stores nie standardmaessig.
- Gib keine Zugangsdaten in Chat, Logs, PRs oder generierter Doku aus.
- Frage vor Push, PR, Branch-Erstellung oder externen API-Calls nach.
- Stoppe bei Infrastruktur- oder Produktionsbezug bis zur ausdruecklichen Freigabe.
- Redigiere gefundene Secrets sofort aus Diff, Output und Kontext.

---

## Checkliste fuer Reviews

- [ ] Wurde nur mit minimalen Rechten gearbeitet?
- [ ] Wurden keine Secrets gelesen, obwohl sie nicht benoetigt wurden?
- [ ] Wurden keine Secrets ausgegeben oder committet?
- [ ] Sind Tokens kurzlebig oder klar widerrufbar?
- [ ] Gibt es fuer externe Aktionen einen Freigabeschritt?
- [ ] Ist der Workflow zwischen lokal, CI/CD und Produktion sauber getrennt?

---

## Workshop-Uebung

### Aufgabe

Nimm einen bestehenden Lab- oder Workflow-Schritt und beantworte:

1. Welche Zugangsdaten koennte der Agent hier potenziell sehen?
2. Welche davon braucht er wirklich?
3. Welche koennen durch `.env.example`, Fixtures oder Test-Tokens ersetzt werden?
4. Wo muss ein Freigabeschritt eingebaut werden?

### Erwartetes Ergebnis

- Eine Liste benoetigter vs. nicht benoetigter Secrets
- Eine sichere Alternative fuer lokale Entwicklung
- Ein Guard-Rail-Vorschlag fuer denselben Workflow in CI/CD

---

## Empfohlene Standardformulierung fuer Repo-Regeln

```md
- Lies keine `.env`- oder Secret-Dateien ohne explizite Anforderung.
- Gib keine Zugangsdaten in Output, Commits oder Dokumentation aus.
- Verwende fuer Demos und Tests nur eingeschraenkte oder simulierte Credentials.
- Frage vor externen oder destruktiven Aktionen immer nach Freigabe.
```

---

## Siehe auch

- [security-guardrails.md](security-guardrails.md)
- [secure-software.md](secure-software.md)
- [../assets/templates/security-review-skill.md](../assets/templates/security-review-skill.md)