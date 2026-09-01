# {{PROJECT_NAME}}

An agent-ready project with a small, durable contract for instructions,
specifications, documentation, validation, and CI. This base template remains
language-neutral; add stack-specific behavior behind the stable scripts.

## Project setup checklist

1. Replace this introduction with the project's purpose, users, and success criteria.
2. Describe the system boundaries in `docs/architecture.md` and operational reality in `docs/operations.md`.
3. Add executable project adapters under `scripts/project/` as the stack takes shape.
4. Copy `.env.example` to `.env` only when local environment variables are needed; never commit `.env`.
5. Initialize OpenSpec bindings for the coding tools used by the project, for example `openspec init --tools codex`.
6. Choose a license before publishing the repository.
7. Run `./scripts/check` before the first commit and before every pull request.

## Stable project interface

Agents and humans use the same commands:

- `./scripts/dev` starts local development through `scripts/project/dev`.
- `./scripts/test` runs the project's tests through `scripts/project/test`.
- `./scripts/check` runs repository contract checks, tests, and `scripts/project/check` when present.

The public commands stay stable while the implementation behind them can change with the stack. See `scripts/project/README.md` before adding adapters.

## Knowledge map

- `AGENTS.md` is the short entry point for how work is done here.
- `openspec/specs/` records current behavioral truth.
- `openspec/changes/` holds proposed behavior changes and their implementation plans.
- `docs/architecture.md` records system structure and durable boundaries.
- `docs/operations.md` records how to run, deploy, observe, and recover the system.
- `docs/decisions/` stores durable technical decisions and their rationale.
- `docs/investigations/` stores time-bounded research and debugging findings.
- `skills/` contains only project-specific agent skills.

`AGENTS.md` points to this knowledge instead of duplicating it. Read the smallest relevant set for the task at hand.

## OpenSpec workflow

OpenSpec separates current truth from proposed change:

```text
openspec/specs/                  current behavior
openspec/changes/<change-name>/  proposed behavior and work
```

For a material behavior change:

1. Explore the problem and existing specifications.
2. Create and review a change proposal, delta specs, design, and tasks.
3. Implement against the approved artifacts.
4. Add requirement-driven tests.
5. Run `./scripts/check`.
6. Archive the completed change so its delta merges into current truth.

See `openspec/README.md` for the repository convention and the official OpenSpec documentation for tool-specific commands.

## Template boundary

This repository owns the project contract. It intentionally does not choose a language, framework, database, cloud, or deployment target. Add those later as project or profile-specific layers rather than turning the base template into a stack template.
