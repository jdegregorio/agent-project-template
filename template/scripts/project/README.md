# Project command adapters

Keep stack-specific commands behind the stable entry points in the parent `scripts/` directory.

Add executable files as the project takes shape:

- `dev` starts the local application and any required services.
- `test` runs the complete project test suite.
- `check` runs additional required validation not already covered by `test`, such as formatting, linting, type checking, generated-file checks, or build verification.

Each adapter may be any executable appropriate for the project. Use a shebang, fail on errors, avoid interactive prompts in validation, and make local and CI behavior match.

Example shell adapter:

```bash
#!/usr/bin/env bash
set -euo pipefail

exec your-project-command "$@"
```

Then run `chmod +x scripts/project/<name>`.
