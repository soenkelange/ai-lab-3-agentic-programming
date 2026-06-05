# UI Specification fuer Workshop-Seiten und Labs

> Zweck: Eine wiederverwendbare UI-Spezifikation fuer workshopbezogene Interfaces, Lernseiten und Labs definieren.

## Ziel

Diese UI Specification schafft eine gemeinsame Grundlage fuer:

- Layout und Informationshierarchie
- Navigation und Interaktionen
- Komponenten und States
- responsives Verhalten
- Barrierefreiheit
- Uebergabe von Design zu Implementierung

Sie ist bewusst leichtgewichtig gehalten, damit sie sowohl fuer Markdown-basierte Seiten als auch fuer spaetere Web-Interfaces nutzbar bleibt.

---

## Designprinzipien

1. Klarheit vor Dekoration
   - Lerninhalte, Callouts, Checklisten und Labs muessen sofort erfassbar sein.

2. Orientierung ohne Reibung
   - Nutzer:innen muessen jederzeit wissen, wo sie sind, was der naechste Schritt ist und wie sie zurueckspringen koennen.

3. Handlung vor Theorie
   - UI soll immer sichtbar machen, was gelesen, entschieden oder ausprobiert werden soll.

4. Konsistenz ueber Module hinweg
   - Gleichartige Inhalte nutzen gleichartige Komponenten, Benennungen und visuelle Prioritaeten.

5. Mobile mitdenken
   - Auch auf kleineren Screens muessen Labs, Checklisten und Mermaid-Diagramme sinnvoll konsumierbar bleiben.

---

## Informationsarchitektur

Jede Workshop-Seite sollte, wenn sinnvoll, diese Struktur abbilden:

1. Titel und Kurzkontext
2. Ziel oder Outcome
3. Kerninhalt
4. Handlungsblock mit naechstem Schritt
5. Verweise auf verwandte Seiten

### Empfohlene Seitenzonen

| Zone | Zweck | Muss enthalten |
|---|---|---|
| Header | Orientierung | Titel, Level, Dauer oder Kontext |
| Intro | Einordnung | 1-3 Saetze zu Ziel und Nutzen |
| Hauptbereich | Lern- oder Arbeitsinhalt | Text, Tabellen, Mermaid, Checklisten |
| Aktionsbereich | Naechste Handlung | Lab starten, Modul weiterlesen, Checkpoint |
| Footer-Navigation | Beweglichkeit | Zurueck, weiter, verwandte Inhalte |

---

## Navigation

### Anforderungen

- Jede Seite braucht einen klaren Ruecksprungpfad.
- Lange Seiten brauchen sichtbare Zwischenstruktur ueber Ueberschriften.
- Labs und Checkpoints brauchen einen expliziten naechsten Schritt.
- Modulseiten brauchen mindestens einen Ruecklink und einen Weiterlink.

### Navigationsmuster

- Modulnavigation: Zurueck zum Modulindex, weiter zum naechsten sinnvollen Schritt
- Lab-Navigation: Vorbereitung -> Aufgabe -> Checkpoint -> naechstes Lab
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
- Validierung von Verstaendnis oder Abschluss eines Labs

Regeln:
- Jeder Punkt muss beobachtbar oder pruefbar sein
- Keine vagen Formulierungen wie "besser verstanden"

### 3. Vergleichstabelle

Zweck:
- Tools, Patterns oder Entscheidungen vergleichen

Regeln:
- Spaltenueberschriften kurz und eindeutig halten
- Nicht mehr als 6-8 Spalten ohne klaren Grund

### 4. Schrittfolge

Zweck:
- Nutzer:innen durch eine Aufgabe fuehren

Regeln:
- Schritte nummerieren
- Jeder Schritt soll mit einer klaren Aktion beginnen

### 5. Mermaid-Diagramm

Zweck:
- Ablaeufe, Architekturen und Entscheidungsbaeume visualisieren

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
| Expanded | Details offen | Zusatzinhalt stoert Hauptfluss nicht |
| Completed | Aufgabe erledigt | Abschluss visuell erkennbar |
| Warning | Risiko oder Voraussetzung | Sofort auffaellig, aber nicht alarmistisch |
| Empty | Noch kein Inhalt oder keine Auswahl | Konstruktive Hilfestellung statt Leere |

---

## Responsives Verhalten

### Desktop

- Tabellen duerfen vollstaendig sichtbar sein.
- Mermaid-Diagramme duerfen breiter werden, muessen aber lesbar bleiben.
- Callouts und Checklisten sollen visuell klar getrennt sein.

### Mobile

- Tabellen muessen umbrechbar oder in kleinere Einheiten zerlegt sein.
- Mermaid-Diagramme brauchen kurze Labels, damit nichts abgeschnitten wird.
- Schrittfolgen und Checklisten muessen ohne horizontales Scrollen nutzbar sein.
- Navigationslinks muessen ausreichend Abstand haben.

---

## Barrierefreiheit

Minimum-Anforderungen:

- Ausreichender Kontrast zwischen Text und Hintergrund
- Klare Ueberschriftenhierarchie ohne Spruenge
- Semantisch nachvollziehbare Listen und Tabellen
- Linktexte mit Bedeutung, nicht nur "hier klicken"
- Fokus-Reihenfolge muss logisch bleiben
- Wichtige Informationen nicht nur ueber Farbe vermitteln

### Sprachregel

- Primaersprache ist Deutsch
- Akzeptierte Fachbegriffe duerfen Englisch bleiben, wenn sie im Teamkontext etabliert sind
- Gemischte Sprache innerhalb eines Absatzes vermeiden, wenn kein fachlicher Grund vorliegt

---

## Design-to-Implementation-Handoff

Jede spezifizierte Seite oder UI sollte diese Angaben enthalten:

| Feld | Inhalt |
|---|---|
| Screen-Name | Eindeutige Bezeichnung |
| Ziel | Was Nutzer:innen auf dieser Seite erreichen sollen |
| Primaere Aktion | Wichtigste Handlung |
| Sekundaere Aktion | Optionale Handlung |
| Inhalte | Welche Inhaltsbloecke sichtbar sein muessen |
| Komponenten | Welche Muster genutzt werden |
| States | Welche States unterstuetzt werden muessen |
| Responsiv-Hinweise | Besonderheiten fuer mobile oder kleine Screens |
| Akzeptanzkriterien | Woran die Umsetzung gemessen wird |

---

## Template fuer einzelne Screens

```md
## Screen: [Name]

### Ziel
- [Was soll erreicht werden?]

### Zielgruppe
- [Wer nutzt diese Seite?]

### Primaere Aktion
- [Hauptaktion]

### Sekundaere Aktionen
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
- [ ] Naechster Schritt ist sichtbar
- [ ] Mobile Nutzung bleibt moeglich
- [ ] Fachbegriffe sind konsistent
```

---

## Akzeptanzkriterien fuer diese Specification

- Sie ist fuer Workshop-Seiten und Labs direkt nutzbar.
- Sie definiert klare Komponenten statt nur abstrakter Prinzipien.
- Sie deckt Layout, Navigation, States, Responsiveness und Accessibility ab.
- Sie ist knapp genug fuer praktische Nutzung, aber konkret genug fuer Implementierung.

---

## Einsatz im Repository

Empfohlene erste Einsatzorte:

1. README als Landing Page
2. Lernpfade fuer klarere Einstiegsnavigation
3. Labs fuer konsistente Schrittfuehrung
4. Facilitator-Seiten fuer bessere Moderationslogik

## Verwandte Inhalte

- [backlog.md](../../backlog.md)
- [README.md](../../README.md)
- [security-review-skill.md](security-review-skill.md)