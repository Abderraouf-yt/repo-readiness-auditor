# Contributing to Repo Readiness Auditor

First off, thank you for considering contributing to the Repo Readiness Auditor! It's people like you that make AI agent skills better for everyone.

Below are guidelines to help you effectively contribute.

## How to Contribute

1. **Fork the repository** on GitHub.
2. **Clone your fork** locally.
3. **Link the skill** to your AI agent for testing.
   - For Gemini CLI: `gemini skills link ./repo-readiness-auditor`
   - Or just copy it to your `.agents/skills` folder.
4. **Create a branch** for your edits (`git checkout -b feature/my-awesome-pattern`).
5. **Make your changes**. 
   - If adding new detect secrets patterns, add them to `references/secret-patterns.md`.
   - If adding a new tech stack, update both `SKILL.md` detection logic and `references/project-structures.md`.
6. **Test your changes** by running the auditor on a dummy repository.
7. **Commit your changes**. Ensure your commit messages clearly describe what you changed.
8. **Push** to your fork and submit a **Pull Request**.

## Contribution Ideas

Here are areas where we always welcome help:
- **New Tech Stacks**: Add project structure guidelines for Swift, Kotlin, PHP, etc.
- **New Secret Patterns**: Add regex patterns for emerging cloud providers.
- **Improved Prompts**: Refine the prompt logic in `SKILL.md` to reduce token usage or improve accuracy.
- **Tool Mapping**: Expand the remote mode to support other MCP servers (e.g., GitLab MCP).

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
