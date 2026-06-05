# Backlog

## Open Items

### 1. Best practices for allowing agents to use credentials

- Define a secure credential model for agent workflows (API tokens, service accounts, scoped keys).
- Add practical guidance on least privilege, short-lived tokens, rotation, revocation, and audit logging.
- Document safe handling patterns for local dev, CI/CD, and shared team environments.
- Add explicit guard rails for prompt/tool usage (for example: never expose raw secrets in prompts, logs, or commits).

**Deliverable:** A dedicated section or module with concrete do/don't examples and a workshop exercise.

---

### 2. Let the author feed FAQ more easily

- Add a lightweight process for continuously extending [faq.md](faq.md).
- Propose a simple intake format (question, context, short answer, links).
- Add a contribution template/snippet so new FAQ entries stay consistent.
- Define where workshop feedback should be captured before FAQ curation.

**Deliverable:** A repeatable FAQ update workflow and a small template.

---

### 3. Consolidate repository language (English or German)

- Decide on one primary language for the whole repository.
- Audit mixed-language files and headings.
- Define migration strategy (single-language conversion or bilingual strategy with clear structure).
- Update naming/content guidelines so new files follow the language decision.

**Deliverable:** A clear language policy and consistent content across the repo.
