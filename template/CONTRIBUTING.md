# Contributing

## Workflow

1. Confirm the scope and read the relevant specification and documentation.
2. Use an OpenSpec change for material changes to observable behavior.
3. Create a focused branch and keep unrelated changes out of the diff.
4. Implement the change with requirement-driven tests.
5. Update documentation and specifications whose truth changed.
6. Run `./scripts/check`.
7. Open a pull request using the repository template.

Small documentation fixes, refactors, and implementation-only corrections do not need ceremonial specification work when behavior is unchanged. Keep current specs accurate regardless.

## Commit and pull request quality

- Write commits that explain one coherent change.
- Describe why the change is needed, not only what files changed.
- Link the relevant OpenSpec change or explain why none is needed.
- Include exact validation commands and results.
- Call out migrations, rollout concerns, security impact, and rollback needs.

## Security

Do not include a real secret in an issue, commit, pull request, test fixture, log, screenshot, or example. Use clearly fake placeholders and report suspected exposure through the project's private security channel.
