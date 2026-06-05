# FAQ Engineering & Security — Agentic Programming in der Praxis

Diese FAQ richtet sich an Engineering-, Security- und Platform-Teams, die Agentic Programming technisch robust und sicher betreiben wollen.

## Technische Qualität

<details>
<summary><strong>F: Halluziniert ein Agent nicht ständig?</strong></summary>

Halluzinationen sind real, aber mit Systemdesign gut reduzierbar.

**Was robust funktioniert:**
- Retrieval statt Raten: relevante Doku und Code in den Kontext geben.
- Tool-basierte Verifikation: Tests, Typprüfung, statische Analyse.
- Kleine Arbeitspakete mit Zwischenabnahmen.
- Unsicherheiten explizit ausgeben lassen.

</details>

<details>
<summary><strong>F: Sind Agent-generierte Tests zuverlässig genug?</strong></summary>

Als Startpunkt sehr nützlich, allein aber selten ausreichend.

**Empfehlung:**
- Agent schreibt Erstversion der Tests.
- Mensch ergänzt negative Pfade, Randwerte und Security-relevante Fälle.
- Mindestens ein Test wird direkt aus Akzeptanzkriterien abgeleitet.

</details>

<details>
<summary><strong>F: Was tun, wenn der Agent in einem Loop festhängt?</strong></summary>

Der häufigste Grund ist unklare Zieldefinition oder fehlendes Feedback.

**Gegenmaßnahmen:**
- Aufgabe in kleinere Schritte zerlegen.
- Zwischenziele und Exit-Kriterien setzen.
- Agent zu Alternativen und Annahmen verpflichten.
- Lauf abbrechen und mit präziserem Kontext neu starten.

</details>

## Sicherheit und Schutzmechanismen

<details>
<summary><strong>F: Wie verhindere ich Data Leaks durch Agenten?</strong></summary>

Durch Policy und technische Controls.

**Minimum Controls:**
- Least Privilege für Tokens und Tools.
- Secret-Scanning in CI und Pre-Commit.
- Allowlist/Denylist für Pfade und Kommandos.
- Keine Roh-Secrets in Prompts, Logs oder Chat-Historien.

</details>

<details>
<summary><strong>F: Wie gehe ich mit Prompt Injection um?</strong></summary>

Behandle externe Inhalte als untrusted input.

**Praktische Schutzmaßnahmen:**
- Daten und Anweisungen strikt trennen.
- Kritische Aktionen nur mit expliziter Freigabe.
- Quellen und Begründungen verpflichtend ausgeben.
- Bei Unsicherheit Stop-and-Ask statt Auto-Ausführung.

</details>

<details>
<summary><strong>F: Wie verhindere ich destruktive Aktionen (z. B. Löschen, Force-Push)?</strong></summary>

Mit gestuften Rechten und Freigabegates.

**Typisches Setup:**
- Read-only als Default.
- Schreibrechte nur in erlaubten Arbeitsbereichen.
- Destruktive Aktionen nur nach manueller Bestätigung.
- Produktionszugriff über getrennte, auditable Pipelines.

</details>

<details>
<summary><strong>F: Wie mache ich Agent-Läufe auditierbar?</strong></summary>

Über durchgehende Observability.

**Benötigt wird:**
- Trace der Schritte und Tool-Aufrufe.
- Verknüpfung zu Ticket, Commit, Reviewer.
- Versionierung von Policies und Konfiguration.
- Zentrale Log- und Retention-Strategie.

</details>

## Architektur und Skalierung

<details>
<summary><strong>F: Wann reicht Single-Agent, wann braucht es Multi-Agent?</strong></summary>

Single-Agent reicht oft für lineare Aufgaben.

Multi-Agent lohnt sich bei:
- parallelisierbaren Aufgaben,
- klar getrennten Rollen (Plan, Build, Review),
- expliziten Governance- und Freigabeflows.

</details>

<details>
<summary><strong>F: Wie vermeide ich Vendor Lock-in?</strong></summary>

Durch konsequente Entkopplung.

**Empfohlen:**
- Inference Layer für Model-Wechsel.
- Standardisierte Tool-Adapter.
- Portables Skill/Prompt-Set mit Versionskontrolle.

</details>

<details>
<summary><strong>F: Sind lokale Models eine echte Produktionsoption?</strong></summary>

Ja, abhängig vom Anwendungsfall.

**Pro:** Datenhoheit, planbare Kosten, Offline-Fähigkeit.
**Contra:** höherer Betriebsaufwand, teils geringere Qualität bei komplexen Tasks.

</details>

## Betrieb und Teamarbeit

<details>
<summary><strong>F: Müssen alle im Team dieselbe IDE nutzen?</strong></summary>

Nein. Standardisierte Prozesse sind wichtiger als einheitliche Tools.

**Vereinheitlichen solltest du:**
- Qualitätsgates.
- Security-Policies.
- PR- und Übergabeformat.

</details>

<details>
<summary><strong>F: Welche Mindest-Checkliste sollte jede Agent-Änderung bestehen?</strong></summary>

**Pragmatische Mindest-Checkliste:**
- Anforderungen sind als Akzeptanzkriterien dokumentiert.
- Betroffene Tests laufen grün.
- Security-Checks sind ohne neue Findings.
- Diff ist reviewbar und auf den Scope begrenzt.
- Rollback-Pfad ist klar.

</details>
