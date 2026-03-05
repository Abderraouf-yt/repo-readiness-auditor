# Secrets Remediation Guide (2026)

If the Repo Readiness Auditor has detected leaked secrets, follow these steps immediately to protect your infrastructure. **Deleting the file or clearing git history is NOT enough.** You must rotate or revoke the compromised keys.

## Quick Revocation Links

| Provider | Revocation / Rotation Guide |
|----------|-----------------------------|
| **GitHub** | [GitHub Personal Access Tokens](https://github.com/settings/tokens) |
| **OpenAI** | [OpenAI API Keys Dashboard](https://platform.openai.com/api-keys) |
| **AWS** | [IAM User Access Keys](https://console.aws.amazon.com/iam/home#/users) |
| **Stripe** | [Stripe API Keys](https://dashboard.stripe.com/apikeys) |
| **Google Cloud** | [GCP Service Accounts](https://console.cloud.google.com/iam-admin/serviceaccounts) |
| **Heroku** | [Heroku API Tokens](https://dashboard.heroku.com/account) |
| **Anthropic** | [Anthropic Console](https://console.anthropic.com/settings/keys) |
| **Supabase** | [Supabase Project Settings](https://supabase.com/dashboard/project/_/settings/api) |

## Standard Remediation Workflow

1. **REVOKE**: Invalidate the leaked key at the provider level using the links above.
2. **ROTATE**: Generate a new key and update your production environment variables.
3. **CLEAN**: Use [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) or `git-filter-repo` to remove the secret from your git history.
4. **SECURE**: Run the `setup-pre-commit.sh` script to prevent future leaks:
   ```bash
   ./scripts/setup-pre-commit.sh
   ```
