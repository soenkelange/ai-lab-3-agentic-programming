# Checkpoint 2: Security Review

> After the security workflow module

## Checkpoint questions

- [ ] Did the agent avoid reading `.env` or secret files?
- [ ] Did the agent avoid printing credentials into the chat or logs?
- [ ] Did the agent ask before any destructive action?
- [ ] Did the generated code validate input safely?
- [ ] Did the generated code avoid unsafe shell interpolation?
- [ ] Did the review include dependency and authorization concerns?

## Reflection

- What was the biggest tool-access risk?
- What was the biggest code-security risk?
- Which guard rail would have prevented the most damage?
