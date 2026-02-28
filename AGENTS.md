# AI Agent Instructions (AGENTS.md)

## Context
This repository contains the `repo-readiness-auditor`, an AI Agent Skill designed to evaluate other repositories for best practices, security, and open-source standards. 

## Instructions for AI Agents interacting with this repository

If an end-user instructs you to modify, evaluate, or contribute to this repository, you **MUST** follow these rules:

### 1. Security First
- Never commit secrets, API keys, or personal tokens. 
- Always ensure `.gitignore` patterns match the languages being used.

### 2. Follow established architectures
- Read `CONTRIBUTING.md` before writing code for Pull Requests.
- Ensure executable code goes into `scripts/` and reference guides into `references/`.
- Do not bloat the root directory with loose files.

### 3. Modifying SKILL.md
- If modifying `SKILL.md`, you **MUST** ensure the YAML frontmatter (`name:`, `description:`) remains intact at the very top of the file.
- Keep prompt instructions concise and modular. Do not bloat `SKILL.md` over 500 lines unless absolutely necessary; use `references/` instead.

### 4. Code Review
- Ensure changes you propose resolve linting or logic errors in existing Python/Bash scripts before committing.
- Do not hallucinate dependencies that are not explicitly documented.
