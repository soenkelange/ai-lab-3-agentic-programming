# Security Review Skill Template

> Portable workshop skill template for agentic coding tools.

## Purpose

Use this skill whenever a task changes code, docs, prompts, or repository instructions and needs a security check before merge.

## Instructions

- Do not read `.env` or secret files unless explicitly required.
- Do not commit secrets or print them in output.
- Validate inputs and avoid unsafe shell interpolation.
- Check authz, data exposure, dependencies, and logging.
- Stop and ask before destructive or external actions.

## Output format

When used, the agent should return:

1. a short summary of what changed
2. a checklist of security risks reviewed
3. any findings that still need human review

## Checklist

- [ ] Secrets were not read by default
- [ ] Secrets were not committed
- [ ] Inputs were validated
- [ ] Sensitive output was not logged
- [ ] Dependencies were reviewed
- [ ] Shell commands were safe
- [ ] Approval was requested for destructive actions

## Portability map

| Agent | Where this skill usually lives |
|---|---|
| Cursor | project rules or workspace instructions |
| Claude Code | skill or instruction file in the repo |
| Windsurf | workspace instructions or agent settings |
| GitHub Copilot | repo instructions such as AGENTS.md or copilot instructions |
| Aider | prompt template or repo instruction file |
| Pi / OpenCode | config or prompt file |
