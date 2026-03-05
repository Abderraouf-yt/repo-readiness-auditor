#!/bin/bash

# Repo Readiness Auditor - Pre-commit Hook Installer
# Prevents secrets and large artifacts from being pushed to git.

HOOK_PATH=".git/hooks/pre-commit"

echo "🐙 Setting up Repo Readiness Pre-commit Hook..."

if [ ! -d ".git" ]; then
    echo "❌ Error: Not a git repository. Run this script from the root of your project."
    exit 1
fi

cat << 'EOF' > "$HOOK_PATH"
#!/bin/bash

echo "🔍 Running Repo Readiness Audit..."

# Trigger the auditor skill (local execution)
# Note: This assumes the AI Agent or CLI is configured to run the auditor.
# For standalone local use, we check for high-risk files/patterns manually.

# 🛡️ Secrets Check
# Scan for common secret patterns in staged files
STAGED_FILES=$(git diff --cached --name-only)
for file in $STAGED_FILES; do
    if grep -qE "sk-[a-zA-Z0-9]{32}|AIza[a-zA-Z0-9\-_]{35}|ghp_[a-zA-Z0-9]{36}" "$file" 2>/dev/null; then
        echo "❌ ERROR: Found potential secrets in $file. Commit aborted."
        echo "Please remove the secrets and try again."
        exit 1
    fi
done

# 🧹 Dangerous Files Check
if echo "$STAGED_FILES" | grep -qE ".env|.venv|node_modules|package-lock.json"; then
    echo "⚠️ WARNING: You are attempting to commit environment files or build artifacts."
    echo "Please check your .gitignore."
fi

echo "✅ Repo readiness check passed."
exit 0
EOF

chmod +x "$HOOK_PATH"

echo "✅ Pre-commit hook installed to $HOOK_PATH"
echo "Your repository is now protected from accidental secret leaks."
