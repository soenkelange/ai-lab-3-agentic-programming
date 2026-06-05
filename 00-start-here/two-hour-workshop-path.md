# Two-Hour Workshop Path — Free-First, Cross-Agent Compatible

> Goal: one rigid setup + exercise path that fits in 2 hours and teaches skills, rules, and secure usage before sub-agents.

## Primary workshop agent

**Default workshop agent: Aider or OpenCode with a local model**

Why free-first:
- every participant can follow the same setup without a paid license
- the workflow stays practical in a 2-hour session
- the same instruction content can be mapped to Cursor, Claude Code, Windsurf, Copilot, Aider, and Pi

If a participant already has Cursor, they can follow the Cursor mapping in the tables below.
Otherwise, use the free path and translate the same ideas into the other tools.

---

## 0:00–0:10 Setup

- Open the repo in Aider or OpenCode
- Read [Agent Terminology](../05-agentic-workflows/agent-terminology.md)
- Open [Security Review Skill Template](../assets/templates/security-review-skill.md)
- Decide where the reusable instruction will live in your agent

Deliverable:
- you know which concept maps to rules, skills, sub-agents, and memory

---

## 0:10–0:30 Create the skill

Create one reusable skill or rule pack named `security-review`.

Minimum content:
- never read `.env` by default
- never commit secrets
- check inputs, authz, logging, and dependencies
- ask before destructive actions

Use this mapping:

| Agent | What to create |
|---|---|
| Cursor | a project rule or workspace instruction |
| Claude Code | a skill or instruction file in the repo |
| Windsurf | a workspace instruction |
| GitHub Copilot | repo instructions such as AGENTS.md |
| Aider | a prompt template or repo note |
| Pi / OpenCode | config or prompt file |

Deliverable:
- a reusable instruction file or rule that can be reused later

---

## 0:30–1:00 Use the skill on a real task

Task:
- ask the agent to review [Security Guard Rails](../05-agentic-workflows/security-guardrails.md)
- ask it to improve one section of [Secure Software Practices](../05-agentic-workflows/secure-software.md)
- require the agent to explain which security checks it applied

Constraints:
- do not allow the agent to read `.env`
- do not allow secret material in prompts
- do not allow unrelated refactoring

Deliverable:
- one concrete repo improvement
- one short security review summary

---

## 1:00–1:20 Show the cross-agent mapping

Compare the same skill in other tools.

| Concept | Cursor | Claude Code | Windsurf | Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|
| persistent instructions | rules | skill/instruction file | workspace instruction | repo instruction | prompt template | config/prompt |
| reusable capability | skill-like workflow | skill | workflow pack | instruction block | script/prompt | template |
| delegated helper | sub-agent | sub-agent | secondary helper | limited | uncommon | orchestration helper |

Cursor mapping note: only use this column if participants already have a Cursor license or trial; it is not the free baseline.

Deliverable:
- participants can explain the same idea in more than one tool vocabulary

---

## 1:20–1:45 Secure the workflow

Add one extra guard rail:
- never read `.env` unless explicitly required
- never commit secrets
- stop on destructive actions until approved

Then ask the agent to re-run the same task with the guard rail active.

Deliverable:
- a safer workflow with the same functional result

---

## 1:45–2:00 Checkpoint

Answer these questions:
- what is the difference between a rule and a skill?
- which part belongs to the agent, and which part belongs to the repo?
- what would change if you used Claude Code or Aider instead of Cursor?
- what security risk would this workflow create if left unchecked?

Final outcome:
- one reusable instruction artifact
- one completed task
- one cross-agent vocabulary map
