# Coding Agent Terminology Matrix

This table maps common concepts used by coding agents to the wording participants will encounter in different tools.

| Concept | Cursor | Claude Code | Windsurf | GitHub Copilot | Aider | Pi / OpenCode |
|---|---|---|---|---|---|---|
| Persistent behavior instructions | Rules | Instructions / skills / agent behavior | Workspace instructions | Workspace or platform guidance | Repo prompt conventions | Config / prompt policy |
| Reusable task packs | Skills | Skills | Workflow packs | Not a common branded term | Prompt templates or scripts | Templates / plugins |
| Delegated specialist agents | Sub-agents | Sub-agents | Secondary agents / workflow helpers | Usually not first-class | Usually not first-class | Sometimes orchestration helpers |
| Memory across tasks | Memory / context | Memory / persistence | Workspace context | Platform/context memory | Git history / repo context | Memory / context features |
| Tool access policy | Rules / settings | Tool permissions / approvals | Workspace policies | Admin/workspace policy | CLI conventions | Config / approvals |
| Single task input | Chat / command | Chat / terminal request | Chat request | Chat request | CLI instruction | CLI / chat request |
| System-level guidance | Hidden system prompt | Hidden system prompt | Hidden platform prompt | Hidden platform prompt | Prompt template | Hidden platform prompt |

## How to use this matrix

- Use **rules** for safety and consistency.
- Use **skills** for reusable capability.
- Use **sub-agents** only after the base layer is solid.
- Use **memory** carefully and intentionally.

## Recommended teaching sequence

1. Terminology and shared mental model
2. Rules and skills
3. Safety and tool policy
4. Sub-agents and delegation
5. Multi-agent workflows
