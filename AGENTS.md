# Agent Shared Brain: RepoReadinessAuditor

This file serves as the "Living Logic" for the agentic team working on the RepoReadinessAuditor skill.

## Core Directives
1. **GitHub Flow**: Keep `main` stable. Use feature branches (e.g., `feat/*`) for testing advanced AI workflows.
2. **Auto-Remediation**: Do not just audit—actively fix issues by providing community templates (e.g., in `references/templates/`).
3. **Memory Integration**: Always consult `CanonicalProject:RepoReadinessAuditor` in the MCP memory to grasp historical context and decisions before proposing complex changes.

## Shared Context
- The target use case is auditing any project's directory structure, .gitignore, secrets exposure, and documentation.
- The tech stack is language-agnostic but relies on local execution combined with remote `github-mcp-server` integration.
