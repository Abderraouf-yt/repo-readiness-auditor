# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2026-03-01
### Added
- **Step 9: MCP Server Standards Audit (Conditional)** — Detects Model Context Protocol servers and audits them against 2026 best practices.
- New reference file `references/mcp-standards.md` with transport security, modularity, containerization, and SDK conformance testing standards.
- MCP Server detection via `@modelcontextprotocol/sdk` (Node.js) and `mcp` (Python) in Step 1 tech stack table.
- `🔌 MCP Server Compliance` section added to the audit output template.
- MCP-specific `.gitignore` patterns added to `references/gitignore-patterns.md`.
- MCP remote detection queries added to Remote Audit Mode.
- Ideal MCP server project tree added to `references/mcp-standards.md`.

## [1.0.1] - 2026-02-28
### Added
- `CONTRIBUTING.md` to guide community contributions.
- `CODE_OF_CONDUCT.md` to establish community standards.
- `CHANGELOG.md` to track version history.
- `README.md`, `LICENSE`, and `.gitignore`
- Gemini CLI native `extensions install` instructions to the README.

### Fixed
- Fixed truncated YAML frontmatter trigger phrase that caused validation warnings.
- Added missing reference files (`gitignore-patterns.md`, `project-structures.md`, `secret-patterns.md`) to the public repository to fix automated Vercel Codex Bot audits.

## [1.0.0] - 2026-02-28
### Added
- Initial release of the Repo Readiness Auditor skill.
- Support for 15+ tech stacks and framework detection.
- Deep regex scanning for hardcoded secrets and credentials.
- Remote Github auditing mode powered by `github-mcp-server`.
- Comprehensive reference documents for `.gitignore` patterns, secret definitions, and ideal project structures.
