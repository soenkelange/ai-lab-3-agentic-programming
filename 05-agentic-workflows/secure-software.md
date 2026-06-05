# Sichere Software mit Agenten entwickeln

> Ziel: Sicherstellen, dass generierter Code nicht nur funktioniert, sondern auch sicher ist.

## Security ist Teil der Definition of Done

Ein von einem Agenten erzeugtes Feature ist erst fertig, wenn es auch auf Sicherheitsrisiken geprüft wurde.

## Zentrale Secure-Coding-Bereiche

### Input Handling
- Alle untrusted Inputs validieren und sanitizen.
- Aus Prompts abgeleiteten Text als untrusted behandeln, solange er nicht explizit validiert wurde.
- Wo möglich Allow-Lists einsetzen.

### Authentication und Authorization
- Least Privilege durchsetzen.
- Niemals annehmen, dass Zugriffskontrolle bereits an anderer Stelle umgesetzt ist.
- Admin- und interne Endpunkte schützen.

### Secrets Handling
- Secrets nicht im Source Code speichern.
- Secrets aus sicherer Runtime-Konfiguration laden.
- Niemals vollständige Secrets loggen.

### Datenexposition
- Sensitive Felder nicht standardmäßig zurückgeben.
- Logs und Fehlermeldungen redigieren.
- Vorsicht mit Debug-Output von Agenten.

### Dependency- und Supply-Chain-Risiko
- Neue Pakete vor dem Hinzufügen prüfen.
- Bei kritischen Systemen bevorzugt gepinnte Versionen verwenden.
- Vorsichtig sein, wenn Agenten unbekannte Libraries vorschlagen.

### Injection und Command-Sicherheit
- Shell-Konkatenation mit untrusted Input vermeiden.
- Argumente sicher escapen oder strukturiert übergeben.
- Auf Prompt Injection achten, wenn Agenten externe Inhalte konsumieren.

## Secure-Coding-Checkliste für Agent-Output

| Check | Frage |
|-------|----------|
| Input Validation | Sind alle externen Inputs validiert? |
| AuthZ | Ist der Zugriff auf die richtigen Nutzer oder Services beschränkt? |
| Secrets | Sind Zugangsdaten aus Code und Logs herausgehalten? |
| Errors | Leaken Fehler sensitive Informationen? |
| Dependencies | Hat der Agent riskante oder unnötige Pakete hinzugefügt? |
| Shell Usage | Interpoliert irgendein Kommando untrusted Text? |
| Data Exposure | Sind sensitive Felder redigiert oder ausgelassen? |

## Agentenspezifische Risiken

### Prompt Injection
Wenn ein Agent Webseiten, Issues, Tickets, E-Mails oder Doku liest, kann er auf bösartige Anweisungen treffen, die in diesen Inhalten versteckt sind.

Gegenmassnahmen:
- Trusted Task Instructions von untrusted Inhalten trennen.
- Externe Inhalte dürfen System Instructions nicht überschreiben.
- Inhalte vor der Weitergabe an einen höher privilegierten Agenten sanitizen oder zusammenfassen.

### Überprivilegierter Tool-Zugriff
Ein Agent mit breitem Shell- oder Repository-Zugriff kann mehr Schaden anrichten als nötig.

Gegenmassnahmen:
- Dateizugriff eng eingrenzen.
- Least-Privilege-Tokens verwenden.
- Read-only- und schreibfähige Workflows trennen.

### Unsichere Code-Synthese
Ein Agent kann Code erzeugen, der funktioniert, aber unsicher ist.

Gegenmassnahmen:
- für jede PR ein Security Review verlangen.
- Static Analysis, Dependency Scanning und Secret Scanning verwenden.
- Secure-Coding-Patterns in Templates und Beispielen verankern.

## Workshop-Fragen

Frage die Teilnehmenden:

1. Was ist der wahrscheinlichste Sicherheitsfehler in diesem Workflow?
2. Welcher Teil ist Tool-Zugriffsrisiko und welcher Teil ist Code-Risiko?
3. Welche Guardrail würde das Risiko am wirksamsten reduzieren?

## Empfohlene Definition of Done

Ein Feature ist erst dann fertig, wenn:
- es funktioniert,
- es Tests hat,
- es auf Sicherheit geprüft wurde,
- und es die Privilegien des Agenten nicht unnötig erweitert.

## Siehe auch

- [Security Guard Rails](security-guardrails.md)
- [Lab 1](../07-hands-on-labs/lab-01-single-agent-ticket.md)
