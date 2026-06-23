# Provider-Optionen (Zentrale Referenz)

Diese Datei vergleicht verfuegbare Inference-Provider fuer den Workshop neutral und kompakt.

## Workshop-Standard

Empfohlener Default fuer die 2,5h-Session:
- Coding Agent: Aider
- Provider: Google AI Studio (Free Tier)
- Modell: Gemini 2.0 Flash

## Vergleich

| Option | Kosten-Einstieg | API Key noetig | Setup-Aufwand | Geeignet fuer | Hinweise |
|---|---|---|---|---|---|
| Google AI Studio | kostenloser Free Tier | Ja | niedrig | Standard-Workshop, schneller Start | OpenAI-kompatibel nutzbar |
| GitHub Models | oft mit GitHub-Account nutzbar | Ja | niedrig bis mittel | Teams mit GitHub-Fokus | Modellangebot variiert |
| OpenRouter | teilweise free/guenstig, teils paid | Ja | niedrig | Modellvielfalt, flexible Tests | Budget-Limits sinnvoll setzen |
| Anthropic | paid/free je Konto | Ja | niedrig | Claude-zentrierte Workflows | fuer dieses Lab optional |
| Ollama lokal | kostenlos | Nein | mittel | Offline, datensensitiv, key-frei | braucht lokalen Download/Leistung |

## Entscheidungsregel fuer Teilnehmende

1. Wenn unklar: Google AI Studio waehlen.
2. Wenn keine Cloud erlaubt: Ollama lokal waehlen.
3. Wenn bestehender Team-Stack vorhanden: vorhandenen Provider nutzen, Lab-Aufgaben bleiben gleich.

## Sicherheitsregel

- API Keys nur lokal in .env speichern.
- Keine Keys in Commits, Screenshots oder Prompts teilen.
