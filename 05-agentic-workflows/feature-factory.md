# Feature Factory

```mermaid
flowchart TD
	A[Ticket] --> B[Analysis]
	B --> C[Implementation]
	C --> D[Tests]
	D --> E[Security Review]
	E --> F[PR]
```

Die Feature Factory ist der Kern-Workflow des Workshops: Agenten nehmen ein konkretes Issue, analysieren die Codebasis, implementieren die Aenderung, fuehren Tests aus und erzeugen eine reviewbare Pull Request.

Security Review ist Teil des Workflows und kein nachtraeglicher Zusatz.

## Warum das wichtig ist

- Es macht den Einsatz von Agenten wiederholbar.
- Es liefert eine Struktur, die Teilnehmende in der Arbeit wiederverwenden koennen.
- Es schafft einen natuerlichen Platz fuer Security Checks.

## Empfohlene Checkpoints

- Ist der Agent innerhalb der vorgesehenen Dateien geblieben?
- Hat die Implementierung Secrets, unsichere Input-Behandlung oder zu breite Berechtigungen eingefuehrt?
- Ist der Diff fuer einen menschlichen Reviewer weiterhin gut nachvollziehbar?
