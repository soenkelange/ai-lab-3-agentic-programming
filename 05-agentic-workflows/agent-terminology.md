# Agent Terminology Across Coding Agents

> The important layer before sub-agents: prompts, instructions, rules, skills, memory, and tool policy.

## Why this matters

Different coding agents use different names for the same ideas. If you want agents to be efficient and consistent, you need to standardize how you express:

- behavior instructions
- tool boundaries
- reusable task patterns
- optional deeper helpers
- memory or context persistence

This is especially important in Cursor, where rules and skills are a central productivity mechanism and should be treated as a core workshop topic before sub-agents.

---

## Terminology map

| Concept | What it means | Cursor | Claude Code | Windsurf | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|---|
| **System prompt** | High-priority behavioral instruction given to the agent | Base agent instructions, mostly hidden from the user | Model/runtime instructions, mostly hidden | Platform instructions, mostly hidden | Service-level instructions, mostly hidden | Prompt template / model instructions | Platform or prompt-level instructions |
| **User prompt** | The task the user is asking for right now | Chat message, command, or request | Chat / terminal request | Chat request | Chat request | CLI instruction | CLI / chat request |
| **Instructions** | Persistent project-level guidance for behavior and style | Usually represented as rules and project context | Often project instructions or workflow guidance | Usually workspace instructions | Yes: explicit instruction files for project behavior | Usually repo notes and prompt templates | Often config or instruction files |
| **Rules** | Persistent constraints that guide behavior | Yes: project rules / user rules | Often project instructions or workflow guidance | Yes, typically project-level instructions | Yes: can be implemented through instruction files and policy guidance | Usually via prompt templates or repo instructions | Often config or prompt policy |
| **Skills** | Reusable task-specific capability packs | Yes: Skills are a first-class concept | Yes: Skills are a first-class concept | Sometimes workflow packs or agent behaviors | Not usually called skills | Not usually called skills | Sometimes templates or plugins |
| **Agents** | Custom specialized agent modes for targeted workflows | Agent modes / workflow roles | Sub-agents and specialized roles | Supported in some workflows | Yes: custom agents are supported concepts | Usually not the focus | Sometimes supported via orchestration |
| **Hooks** | Event-driven automation to enforce policy or trigger workflows | Sometimes via workspace automation | Sometimes via workflow tooling | Sometimes via workspace automation | Yes: hooks are supported for policy/automation workflows | Usually via shell scripts and git hooks | Usually via config or shell hooks |
| **Sub-agents** | Nested specialist agents delegated to solve part of a task | Supported in agent workflows | Supported explicitly | Supported in some workflows | Can be modeled through custom agents and delegation workflows | Usually not the focus | Sometimes supported via orchestration |
| **Memory** | Persistent context across tasks | Project memory / context features | Memory / persistence features | Persistent workspace context | Limited / platform-dependent | Mostly git history and repo context | Persistent memory features in some tools |
| **Tool policy** | What tools are allowed, blocked, or gated by approval | Rules and settings can restrict this | Built-in tool permissions and approvals | Workspace policies and approvals | Admin/workspace policy | CLI behavior plus repository conventions | Configurable via agent settings |

---

## Practical interpretation

### Cursor
Cursor makes **rules** and **skills** highly visible and productive. Treat them as part of your repo design, not as an afterthought.

### Claude Code
Claude Code emphasizes **skills**, **sub-agents**, and **tooling**. It is very close to the same mental model, but with different naming and a stronger terminal-first posture.

### Windsurf
Windsurf tends to expose the idea as workspace instructions, agent behavior, and project configuration rather than as strongly branded skill objects.

### GitHub Copilot
Copilot supports the same conceptual layer, but with its own vocabulary and file types.

Common Copilot terms to teach explicitly:

- Prompt: reusable prompt files for repeatable tasks.
- Instructions: persistent project guidance files.
- Skills: reusable capability bundles for common workflows.
- Agents: custom agent modes for specialized tasks.
- Hooks: policy and automation triggers for guard rails.

For workshop consistency, treat these as direct equivalents to "rules + skills + agents + policy automation" in other tools.

### Aider
Aider is closer to prompt-driven CLI automation. The concepts still exist, but they are usually implemented as repo conventions, prompt templates, or command usage patterns.

### Pi / OpenCode
These tools often expose the concepts as config, prompts, policies, or orchestration settings rather than as a branded skill system.

---

## Recommended workshop order

1. **System prompt vs user prompt**
2. **Rules and workspace instructions**
3. **Skills as reusable capability packs**
4. **Tool policy and safety boundaries**
5. **Memory and persistence**
6. **Sub-agents only after the above**

That order keeps the workshop grounded in consistent agent usage before moving to multi-agent delegation.

---

## Why skills and rules matter so much

If a team uses them well, they get:

- more consistent output
- fewer repeated explanations
- better safety boundaries
- less prompt drift
- faster onboarding for new contributors
- better reuse across projects

That is why this topic belongs **before** sub-agents.

---

## Suggested workshop exercise

Ask participants to define three repository-level rules:

- never read secrets by default
- never commit secrets
- ask before destructive actions

Then ask them to define one reusable skill or workflow instruction for a common coding task.

---

## Related

- [Agentic Workflows](README.md)
- [Security Guard Rails](security-guardrails.md)
- [Feature Factory](feature-factory.md)
