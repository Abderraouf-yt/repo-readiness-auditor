# MCP Server Standards (2026)

This document contains best-practice architectural patterns for AI Agent Model Context Protocol (MCP) Server repositories.

## Detection Rules
A repository is typically an MCP server if it contains:
*   `@modelcontextprotocol/sdk` in `package.json`
*   `mcp` or `mcp-server` in `requirements.txt` / `pyproject.toml`
*   Mention of "MCP", "Model Context Protocol", "stdio", or "SSE Transport" in `README.md`

## Architecture & Modularity
The codebase should demonstrate clear separation of concerns, preferably inside a `src/` directory.
- `tools/`: Definitions of individual tools exposed to AI agents with strict JSON schemas.
- `resources/`: Definitions of readable context/data sources.
- `prompts/`: Standardized prompt definitions.
- `schemas/`: Zod or JSON Schema validators for input/output.

## Protocol Implementation Checks
- The server must correctly declare its `InitializeResult`. Look for `name`, `version`, and `capabilities` (e.g., `new McpServer({ name: 'my-server', version: '1.0.0' })`).
- **Transport Security**: If serving over HTTP (SSE Transport), the server MUST implement DNS Rebinding Protection. (e.g., checking for `createMcpExpressApp()` rather than raw express).
- Stateless design is preferred for HTTP transports, requiring strict tracking of `mcp-session-id`.

## DevOps & Project Hygiene
- **Containerization**: `Dockerfile` is highly recommended. Because MCP servers execute local code from agents, sandboxing them via containers is an industry standard.
- **Documentation**: The `README.md` MUST explicitly list:
  1. All tools, resources, and prompts exposed.
  2. Transport mode configuration (How to run via stdio vs SSE).
  3. Environment variables required (in an `.env.example`).
- **Secrets Management**: Credentials (API tokens) MUST be managed server-side (stored in `.env` and loaded securely). They should NEVER be exposed or returned to the client/agent in plaintext payload responses.

## Testing Standards
- Unit tests for tool logic.
- **SDK Conformance Testing**: The repository should have commands built to run the official MCP SDK conformance tests (e.g., `test:conformance:server`).

## Ideal MCP Server Project Tree

```
my-mcp-server/
├── src/
│   ├── tools/           # Individual tool definitions with JSON schemas
│   ├── resources/       # Readable context/data source definitions
│   ├── prompts/         # Standardized prompt definitions
│   ├── schemas/         # Zod or JSON Schema validators
│   ├── middleware/      # Auth, logging, request processing
│   └── index.ts         # Entry point (or main.py / main.go)
├── tests/
│   ├── unit/            # Unit tests for individual tools
│   └── integration/     # End-to-end workflow tests
├── Dockerfile           # Containerized deployment (recommended)
├── .env.example         # Document all required env vars
├── README.md            # MUST list all tools, resources, prompts, transport
├── package.json         # or pyproject.toml / go.mod
├── tsconfig.json        # TypeScript configuration (if applicable)
└── LICENSE
```
