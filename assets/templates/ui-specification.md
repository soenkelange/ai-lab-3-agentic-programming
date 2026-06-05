# UI Specification für Workshop-Seiten und Labs

> Zweck: Eine wiederverwendbare UI-Spezifikation für workshopbezogene Interfaces, Lernseiten und Labs definieren.

## Ziel

Diese UI Specification schafft eine gemeinsame Grundlage für:

- Layout und Informationshierarchie
- Navigation und Interaktionen
- Komponenten und States
- responsives Verhalten
- Barrierefreiheit
- Übergabe von Design zu Implementierung

Sie ist bewusst leichtgewichtig gehalten, damit sie sowohl für Markdown-basierte Seiten als auch für spätere Web-Interfaces nutzbar bleibt.

---

## Designprinzipien

1. Klarheit vor Dekoration
   - Lerninhalte, Callouts, Checklisten und Labs müssen sofort erfassbar sein.

2. Orientierung ohne Reibung
   - Nutzer:innen müssen jederzeit wissen, wo sie sind, was der nächste Schritt ist und wie sie zurückspringen können.

3. Handlung vor Theorie
   - UI soll immer sichtbar machen, was gelesen, entschieden oder ausprobiert werden soll.

4. Konsistenz über Module hinweg
   - Gleichartige Inhalte nutzen gleichartige Komponenten, Benennungen und visuelle Prioritäten.

5. Mobile mitdenken
   - Auch auf kleineren Screens müssen Labs, Checklisten und Mermaid-Diagramme sinnvoll konsumierbar bleiben.

---

## Informationsarchitektur

Jede Workshop-Seite sollte, wenn sinnvoll, diese Struktur abbilden:

1. Titel und Kurzkontext
2. Ziel oder Outcome
3. Kerninhalt
4. Handlungsblock mit nächstem Schritt
5. Verweise auf verwandte Seiten

### Empfohlene Seitenzonen

| Zone | Zweck | Muss enthalten |
|---|---|---|
| Header | Orientierung | Titel, Level, Dauer oder Kontext |
| Intro | Einordnung | 1-3 Sätze zu Ziel und Nutzen |
| Hauptbereich | Lern- oder Arbeitsinhalt | Text, Tabellen, Mermaid, Checklisten |
| Aktionsbereich | Nächste Handlung | Lab starten, Modul weiterlesen, Checkpoint |
| Footer-Navigation | Beweglichkeit | Zurück, weiter, verwandte Inhalte |

---

## Navigation

### Anforderungen

- Jede Seite braucht einen klaren Rücksprungpfad.
- Lange Seiten brauchen sichtbare Zwischenstruktur über Überschriften.
- Labs und Checkpoints brauchen einen expliziten nächsten Schritt.
- Modulseiten brauchen mindestens einen Rücklink und einen Weiterlink.

### Navigationsmuster

- Modulnavigation: Zurück zum Modulindex, weiter zum nächsten sinnvollen Schritt
- Lab-Navigation: Vorbereitung -> Aufgabe -> Checkpoint -> nächstes Lab
- Facilitator-Navigation: Agenda -> Demo -> Diskussion -> Material

---

## Komponentenbibliothek

### 1. Info-Callout

Zweck:
- Einordnung, Warnung oder Empfehlung hervorheben

Regeln:
- Maximal eine Kernbotschaft pro Callout
- Nicht mehrere Warnungen direkt untereinander stapeln

### 2. Checkliste

Zweck:
- Validierung von Verständnis oder Abschluss eines Labs

Regeln:
- Jeder Punkt muss beobachtbar oder prüfbar sein
- Keine vagen Formulierungen wie "besser verstanden"

### 3. Vergleichstabelle

Zweck:
- Tools, Patterns oder Entscheidungen vergleichen

Regeln:
- Spaltenüberschriften kurz und eindeutig halten
- Nicht mehr als 6-8 Spalten ohne klaren Grund

### 4. Schrittfolge

Zweck:
- Nutzer:innen durch eine Aufgabe führen

Regeln:
- Schritte nummerieren
- Jeder Schritt soll mit einer klaren Aktion beginnen

### 5. Mermaid-Diagramm

Zweck:
- Abläufe, Architekturen und Entscheidungsbäume visualisieren

Regeln:
- Nur verwenden, wenn ein Diagramm echten Erkenntnisgewinn bringt
- Knoten kurz benennen
- Diagramm immer mit kurzem Einordnungssatz versehen

---

## Interaktions- und Inhalts-States

Auch in dokumentationsnahen Interfaces sollten diese States spezifiziert werden:

| State | Bedeutung | Erwartung |
|---|---|---|
| Default | Normaler Lesefluss | Inhalt ist direkt scanbar |
| Focus | Aktive Interaktion | Fokus klar sichtbar |
| Expanded | Details offen | Zusatzinhalt stört Hauptfluss nicht |
| Completed | Aufgabe erledigt | Abschluss visuell erkennbar |
| Warning | Risiko oder Voraussetzung | Sofort auffällig, aber nicht alarmistisch |
| Empty | Noch kein Inhalt oder keine Auswahl | Konstruktive Hilfestellung statt Leere |

---

## Responsives Verhalten

### Desktop

- Tabellen dürfen vollständig sichtbar sein.
- Mermaid-Diagramme dürfen breiter werden, müssen aber lesbar bleiben.
- Callouts und Checklisten sollen visuell klar getrennt sein.

### Mobile

- Tabellen müssen umbrechbar oder in kleinere Einheiten zerlegt sein.
- Mermaid-Diagramme brauchen kurze Labels, damit nichts abgeschnitten wird.
- Schrittfolgen und Checklisten müssen ohne horizontales Scrollen nutzbar sein.
- Navigationslinks müssen ausreichend Abstand haben.

---

## Barrierefreiheit

Minimum-Anforderungen:

- Ausreichender Kontrast zwischen Text und Hintergrund
- Klare Überschriftenhierarchie ohne Sprünge
- Semantisch nachvollziehbare Listen und Tabellen
- Linktexte mit Bedeutung, nicht nur "hier klicken"
- Fokus-Reihenfolge muss logisch bleiben
- Wichtige Informationen nicht nur über Farbe vermitteln

### Sprachregel

- Primärsprache ist Deutsch
- Akzeptierte Fachbegriffe dürfen Englisch bleiben, wenn sie im Teamkontext etabliert sind
- Gemischte Sprache innerhalb eines Absatzes vermeiden, wenn kein fachlicher Grund vorliegt

---

## Design-to-Implementation-Handoff

Jede spezifizierte Seite oder UI sollte diese Angaben enthalten:

| Feld | Inhalt |
|---|---|
| Screen-Name | Eindeutige Bezeichnung |
| Ziel | Was Nutzer:innen auf dieser Seite erreichen sollen |
| Primäre Aktion | Wichtigste Handlung |
| Sekundäre Aktion | Optionale Handlung |
| Inhalte | Welche Inhaltsblöcke sichtbar sein müssen |
| Komponenten | Welche Muster genutzt werden |
| States | Welche States unterstützt werden müssen |
| Responsiv-Hinweise | Besonderheiten für mobile oder kleine Screens |
| Akzeptanzkriterien | Woran die Umsetzung gemessen wird |

---

## Template für einzelne Screens

```md
## Screen: [Name]

### Ziel
- [Was soll erreicht werden?]

### Zielgruppe
- [Wer nutzt diese Seite?]

### Primäre Aktion
- [Hauptaktion]

### Sekundäre Aktionen
- [Optionale Aktionen]

### Pflichtinhalte
- [Block 1]
- [Block 2]
- [Block 3]

### Komponenten
- [z. B. Checkliste]
- [z. B. Vergleichstabelle]
- [z. B. Mermaid-Diagramm]

### States
- Default
- Focus
- Expanded
- Warning

### Responsiv-Hinweise
- [Desktop]
- [Mobile]

### Akzeptanzkriterien
- [ ] Inhalt ist ohne Vorwissen scanbar
- [ ] Nächster Schritt ist sichtbar
- [ ] Mobile Nutzung bleibt möglich
- [ ] Fachbegriffe sind konsistent
```

---

## Akzeptanzkriterien für diese Specification

- Sie ist für Workshop-Seiten und Labs direkt nutzbar.
- Sie definiert klare Komponenten statt nur abstrakter Prinzipien.
- Sie deckt Layout, Navigation, States, Responsiveness und Accessibility ab.
- Sie ist knapp genug für praktische Nutzung, aber konkret genug für Implementierung.

---

## Einsatz im Repository

Empfohlene erste Einsatzorte:

1. README als Landing Page
2. Lernpfade für klarere Einstiegsnavigation
3. Labs für konsistente Schrittführung
4. Facilitator-Seiten für bessere Moderationslogik

## Verwandte Inhalte

- [backlog.md](../../backlog.md)
- [README.md](../../README.md)
- [security-review-skill.md](security-review-skill.md)