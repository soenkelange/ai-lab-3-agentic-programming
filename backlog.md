# Backlog

## Offene Punkte

### 1. Best Practices fuer den Umgang von Agenten mit Zugangsdaten [x]

- Ein sicheres Modell fuer Zugangsdaten in agentischen Workflows definieren (API-Tokens, Service Accounts, Scoped Keys).
- Praktische Leitlinien zu Least Privilege, kurzlebigen Tokens, Rotation, Revocation und Audit-Logging ergaenzen.
- Sichere Muster fuer lokale Entwicklung, CI/CD und geteilte Team-Umgebungen dokumentieren.
- Explizite Guard Rails fuer Prompt- und Tool-Nutzung ergaenzen (zum Beispiel: rohe Secrets niemals in Prompts, Logs oder Commits ausgeben).

**Ergebnis:** Ein eigener Abschnitt oder ein eigenes Modul mit konkreten Do/Don't-Beispielen und einer Workshop-Uebung.

Umgesetzt in [05-agentic-workflows/zugangsdaten-und-agenten.md](05-agentic-workflows/zugangsdaten-und-agenten.md).

---

### 2. FAQ leichter pflegbar machen

- Einen schlanken Prozess ergaenzen, um [faq.md](faq.md) fortlaufend zu erweitern.
- Ein einfaches Intake-Format vorschlagen (Frage, Kontext, Kurzantwort, Links).
- Ein Beitrags-Template oder Snippet hinzufuegen, damit neue FAQ-Eintraege konsistent bleiben.
- Festlegen, wo Workshop-Feedback vor der FAQ-Pflege gesammelt wird.

**Ergebnis:** Ein wiederholbarer FAQ-Aktualisierungsprozess und ein kleines Template.

---

### 3. Repository-Sprache vereinheitlichen (Englisch oder Deutsch) [x]

- Eine primaere Sprache fuer das gesamte Repository festlegen.
- Dateien und Ueberschriften mit gemischter Sprache pruefen.
- Eine Migrationsstrategie definieren (einsprachige Umstellung oder zweisprachige Struktur mit klaren Regeln).
- Naming- und Inhaltsrichtlinien aktualisieren, damit neue Dateien der Sprachentscheidung folgen.

**Ergebnis:** Eine klare Sprachrichtlinie und konsistentere Inhalte im gesamten Repository.

---

### 4. UX/UI-Design ergaenzen (UI Specification) [x]

- Eine schlanke UI Specification fuer workshopbezogene Interfaces definieren (Layout, Navigation, Zustaende und Interaktionen).
- Wiederverwendbare UI-Patterns und Komponenten festlegen (zum Beispiel Karten, Checklisten, Statusindikatoren, Callouts) inklusive Einsatzregeln.
- Grundlagen der Barrierefreiheit in die Spezifikation aufnehmen (Kontrast, Tastaturfluss, lesbare Typografie, semantische Struktur).
- Richtlinien fuer responsives Verhalten auf Desktop und Mobilgeraeten ergaenzen.
- Ein Uebergabeformat von Design zu Implementierung dokumentieren (Screen-Anforderungen, Akzeptanzkriterien und Edge States).

**Ergebnis:** Ein praktisches UI-Specification-Dokument, das in Workshop-Seiten und Labs wiederverwendet werden kann.

Umgesetzt in [assets/templates/ui-specification.md](assets/templates/ui-specification.md).
