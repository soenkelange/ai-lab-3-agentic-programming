# Feature Factory

```text
Ticket
↓
Analysis
↓
Implementation
↓
Tests
↓
Security Review
↓
PR
```

The Feature Factory is the core workshop workflow: agents take a concrete issue, analyze the codebase, implement the change, run tests, and produce a reviewable pull request.

Security review is part of the workflow, not an afterthought.

## Why it matters

- It makes agent use repeatable.
- It provides a structure participants can reuse at work.
- It gives a natural place to insert security checks.

## Recommended checkpoints

- Did the agent stay within the intended files?
- Did the implementation introduce secrets, unsafe input handling, or overbroad permissions?
- Did the diff remain understandable to a human reviewer?
