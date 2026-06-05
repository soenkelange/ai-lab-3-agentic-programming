# Security Guard Rails for Agent Tooling

> Goal: keep agentic tools useful without letting them cross trust boundaries.

## Principle

Agents should have enough access to be effective, but no more than they need for the current task.

## Guard rails to enforce

### Never read secrets by default
- Do not read `.env`, `.env.local`, `.env.*`, secret stores, or credential files unless the task explicitly requires it.
- Do not print secrets into chat, logs, PRs, or generated documentation.
- Prefer sample files such as `.env.example` or documentation snippets.

### Never commit secrets
- Treat any secret material as out of bounds for commits.
- If an agent detects secrets in a diff, stop and redact before proceeding.
- Use pre-commit or repository checks to block accidental secret commits.

### Limit tool scope
- Prefer file and directory scopes over whole-repo scanning.
- Read only the files needed for the task.
- Avoid shell commands that dump broad environment state.

### Confirm before destructive or external actions
- Ask before deleting files, pushing branches, opening PRs, or calling external APIs that affect production systems.
- Require explicit approval before modifying infrastructure or credentials.

### Protect the prompt and context
- Do not include secrets in prompts.
- Do not ask an agent to paste credential values into generated code.
- Use redacted examples in workshop exercises.

## Recommended policy examples

| Situation | Safe policy |
|-----------|-------------|
| Agent needs config | Read `.env.example`, not `.env` |
| Agent needs API access | Use temporary dev credentials |
| Agent needs repo context | Read only target files |
| Agent prepares a commit | Review diff for secrets first |
| Agent needs to act externally | Ask for confirmation |

## Workshop rule of thumb

If a command would make you nervous to run unattended, it is not a safe default for an autonomous agent.

## Hands-on exercise

Use this checklist during a lab or review:

- [ ] Did the agent stay away from secrets files?
- [ ] Did the agent ask before any destructive action?
- [ ] Did the agent avoid printing environment variables?
- [ ] Did the diff stay within the intended files?
- [ ] Would I be comfortable re-running this task in a shared repository?

## What to do instead of unsafe access

- Use `.env.example` for structure.
- Use mock credentials for demos.
- Use fixture data instead of production exports.
- Use a restricted test token with least privilege.

## Related

- [Secure Software Practices](secure-software.md)
- [Feature Factory](feature-factory.md)
