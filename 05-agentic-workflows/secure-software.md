# Writing Secure Software with Agents

> Goal: make sure generated code is secure, not just functional.

## Security is part of the definition of done

An agent-generated feature is not complete unless it is also reviewed for security risks.

## Core secure-coding areas

### Input handling
- Validate and sanitize all untrusted input.
- Treat prompt-derived text as untrusted unless explicitly validated.
- Use allow-lists where possible.

### Authentication and authorization
- Enforce least privilege.
- Never assume access control is already handled elsewhere.
- Protect admin and internal endpoints.

### Secrets handling
- Keep secrets out of source code.
- Load them from secure runtime configuration.
- Never log full secrets.

### Data exposure
- Avoid returning sensitive fields by default.
- Redact logs and error messages.
- Be careful with debug output from agents.

### Dependency and supply-chain risk
- Review new packages before adding them.
- Prefer pinned versions for critical systems.
- Be cautious when agents suggest unfamiliar libraries.

### Injection and command safety
- Avoid shell concatenation with untrusted input.
- Escape or pass arguments safely.
- Watch for prompt injection when agents consume external content.

## Secure coding checklist for agent output

| Check | Question |
|-------|----------|
| Input validation | Are all external inputs validated? |
| AuthZ | Is access restricted to the correct users or services? |
| Secrets | Are credentials kept out of code and logs? |
| Errors | Do errors leak sensitive information? |
| Dependencies | Did the agent add risky or unnecessary packages? |
| Shell usage | Does any command interpolate untrusted text? |
| Data exposure | Are sensitive fields redacted or omitted? |

## Agent-specific risks

### Prompt injection
If an agent reads web pages, issues, tickets, emails, or docs, it may encounter malicious instructions hidden in the content.

Mitigations:
- Separate trusted task instructions from untrusted content.
- Do not let external content override system instructions.
- Sanitize or summarize content before passing it to a higher-privilege agent.

### Over-permissioned tool access
An agent with broad shell or repository access can do more damage than necessary.

Mitigations:
- Scope file access tightly.
- Use least-privilege tokens.
- Separate read-only and write-capable workflows.

### Unsafe code synthesis
An agent can generate code that works but is insecure.

Mitigations:
- Require security review for every PR.
- Use static analysis, dependency scanning, and secret scanning.
- Keep secure-coding patterns in templates and examples.

## Workshop prompt

Ask participants:

1. What is the most likely security failure in this workflow?
2. Which part is tool access risk and which part is code risk?
3. What guard rail would reduce the risk most effectively?

## Recommended definition of done

A feature is done only when:
- it works,
- it has tests,
- it has been reviewed for security,
- and it does not increase the agent's privilege unnecessarily.

## Related

- [Security Guard Rails](security-guardrails.md)
- [Lab 1](../07-hands-on-labs/lab-01-single-agent-ticket.md)
