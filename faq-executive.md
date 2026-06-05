# FAQ Executive — Agentic Programming für Entscheider:innen

Diese FAQ richtet sich an Führungskräfte, Product-Verantwortliche und Stakeholder, die Entscheidungen zu Nutzen, Risiko und Einführung treffen müssen.

## Nutzen, Qualität und Verantwortung

<details>
<summary><strong>F: Wie kann ich sicherstellen, dass ein entwickeltes Feature auch wirklich die Anforderung erfüllt?</strong></summary>

Nicht vertrauen, sondern verifizieren.

**Empfohlener Abnahme-Flow:**
1. Anforderungen als prüfbare Akzeptanzkriterien formulieren.
2. Umsetzung gegen diese Kriterien planen und dokumentieren.
3. Automatische Qualitätsgates erzwingen (Tests, Lint, Typprüfung, Security-Checks).
4. Menschliche Abnahme gegen Definition of Done und Nicht-Ziele.

**Kurz gesagt:** Agenten beschleunigen Umsetzung, ersetzen aber nicht die fachliche Abnahme.

</details>

<details>
<summary><strong>F: Wer trägt die Verantwortung, wenn ein Agent Fehler produziert?</strong></summary>

Immer das Team bzw. die Organisation, nicht das Tool.

**Praktischer Standard:**
- Klare Ownership pro Änderung.
- Pflichtreview für risikoreiche Änderungen.
- Nachvollziehbare Entscheidungskette in Ticket und Pull Request.

</details>

<details>
<summary><strong>F: Wann lohnt sich Agentic Programming nicht?</strong></summary>

Nicht jede Aufgabe profitiert.

**Warnsignale:**
- Aufgaben sind extrem klein und stabil.
- Es fehlen Test- und Review-Prozesse.
- Governance-Aufwand ist höher als der erwartete Produktivitätsgewinn.

Dann ist klassische Automatisierung oft die bessere Wahl.

</details>

## Kosten und ROI

<details>
<summary><strong>F: Wie kontrollieren wir Kosten, ohne Innovation abzuwürgen?</strong></summary>

Mit Leitplanken statt pauschalen Verboten.

**Bewährte Maßnahmen:**
- Model-Routing nach Aufgabentyp.
- Budgets pro Team oder Workflow.
- Abbruchkriterien bei geringer Erfolgsaussicht.
- Wiederverwendbare Skills und Standards statt Ad-hoc-Prompts.

</details>

<details>
<summary><strong>F: Wie messen wir echten ROI?</strong></summary>

Nicht nur Output, sondern Outcome messen.

**Sinnvolle Kennzahlen:**
- Lead Time pro Tickettyp.
- Rework-Rate nach Merge.
- Defect-Rate in Produktion.
- Review-Aufwand und Durchlaufzeit.

</details>

<details>
<summary><strong>F: Bedeutet 80% Agent-Anteil automatisch 80% Kostenersparnis?</strong></summary>

Nein. Das ist selten linear.

Typisch sind schnellere Iterationen und mehr Fokus auf Architektur und Qualität, bei weiterhin notwendigem Aufwand für Validierung, Governance und Betrieb.

</details>

## Einführung und Operating Model

<details>
<summary><strong>F: Wie starten wir, ohne die Organisation zu überfordern?</strong></summary>

Mit einem klar begrenzten Pilot.

**Vorgehen:**
1. Einen Use Case mit messbarem Ziel wählen.
2. Qualitäts- und Sicherheitsgates definieren.
3. 2-4 Wochen Pilot mit Baseline-Vergleich durchführen.
4. Nur bei belegtem Nutzen schrittweise ausrollen.

</details>

<details>
<summary><strong>F: Brauchen wir neue Rollen?</strong></summary>

Nicht zwingend neue Stellen, aber klarere Verantwortlichkeiten.

**Minimalmodell:**
- Product/Domain Owner für Anforderungen und Abnahme.
- Engineering Owner für Qualität und Architektur.
- Security/Platform für Policies, Tooling und Zugriffsmodell.

</details>

<details>
<summary><strong>F: Müssen alle dieselben Tools nutzen?</strong></summary>

Nein. Einheitliche Standards sind wichtiger als einheitliche IDEs.

**Standardisieren solltest du:**
- Qualitätsgates.
- Security-Policies.
- Übergabe- und Dokumentationsformat.

</details>

## Strategie und Risiko

<details>
<summary><strong>F: Wie vermeiden wir Vendor Lock-in?</strong></summary>

Durch Abstraktionsschichten und offene Schnittstellen.

**Praktisch:**
- Inference Layer nutzen.
- Tool-Anbindung über standardisierte Protokolle.
- Skills/Prompts versionieren und portabel halten.

</details>

<details>
<summary><strong>F: Ist Agentic Programming auditierbar und revisionssicher?</strong></summary>

Ja, wenn Laufspuren systematisch erfasst werden.

**Erforderlich sind:**
- Trace der Schritte (Prompt, Tool-Aufruf, Ergebnis).
- Verknüpfung zu Commit, Ticket und Review.
- Versionierte Policies.
- Aufbewahrung nach Compliance-Vorgaben.

</details>
