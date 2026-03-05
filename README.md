# Repo Readiness Auditor

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GoT MCP](https://img.shields.io/badge/Updated%20Package-@abderraouf-yt/got--mcp-00e5ff.svg)](https://www.npmjs.com/package/@abderraouf-yt/got-mcp)

An advanced AI Agent skill that performs comprehensive, multi-language audits of local and remote project directories. It ensures repositories are clean, secure, modular, and ready for GitHub.

Designed for AI coding assistants like **Claude Code**, **Gemini**, **Windsurf**, and **Cursor** that support Model Context Protocol (MCP) or instruction-based skills.

## Features

- 🔍 **Tech Stack Detection**: Auto-detects 15+ frameworks (Django, Next.js, Rust, Go, etc.).
- 🛡️ **Secrets Scanning**: Deep regex scanning for AWS, OpenAI, Stripe, GitHub PATs, and more.
- 🧹 **Dangerous Files Check**: Flags `node_modules`, `.env`, `.venv`, and build artifacts.
- 🤖 **AI Config Audit**: Validates `AGENTS.md`, `CLAUDE.md`, and `.cursorrules` following 2026 best practices.
- 🐙 **GitHub Best Practices (2026)**: Enforces `SECURITY.md`, `CODEOWNERS`, and standardized PR/Issue templates.
- 🌐 **Remote Mode**: Connects via `github-mcp-server` to audit live, already-pushed GitHub repositories.
- 🏗️ **Project Structure Validation**: Compares your layout to ideal 2026 framework structures.
- 🔌 **MCP Server Audit**: Detects Model Context Protocol servers and validates transport security, modularity, containerization, and SDK conformance.

## Installation

### For Gemini CLI
Install natively via the Gemini CLI Skills ecosystem:
```bash
gemini skills install https://github.com/Abderraouf-yt/repo-readiness-auditor
```

### For other AI Agents (Claude Code, Cursor, Windsurf)
Clone or copy this directory into your AI agent's skills or instructions folder (e.g., `.agents/skills/repo-readiness-auditor`).

## Usage

Simply ask your AI assistant:
- *\"Audit my project structure\"*
- *\"Prepare this repo for GitHub\"*
- *\"Check my pushed repos for leaked secrets\"*
- *\"Is my repo clean?\"*

The agent will automatically trigger the skill and run a 9-step audit workflow, producing a professional markdown report with critical issues, warnings, and actionable fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
