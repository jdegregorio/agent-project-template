# OpenSpec

This directory separates the behavior the system currently promises from changes under consideration.

```text
openspec/
├── config.yaml
├── specs/                 current behavioral truth
└── changes/               proposed changes and archived history
```

## Conventions

- Organize current specs by capability: `specs/<capability>/spec.md`.
- Use kebab-case capability and change names.
- Describe observable behavior and concrete scenarios in specs.
- Keep implementation choices in a change's `design.md` or in `docs/decisions/`.
- Derive tests from requirements and failure scenarios.
- Archive completed changes so their deltas merge into current specs.

The checked-in `config.yaml` supplies language-neutral project rules. After creating a project from this template, run `openspec init --tools <tool-ids>` to add current bindings for the coding tools the project uses. Re-running initialization later refreshes those bindings without replacing specs or changes.

Do not hand-create tool-specific command or skill files in this base template; OpenSpec owns those generated integrations. See the [official OpenSpec guide](https://openspec.dev/docs/getting-started) for the current workflow.
