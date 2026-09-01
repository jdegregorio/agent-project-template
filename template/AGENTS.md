# Project Guide

## Purpose

Read `README.md` for the project's purpose and current setup. Keep that file accurate as the project evolves.

## Standard commands

- `./scripts/dev` - start local development
- `./scripts/test` - run the project's tests
- `./scripts/check` - run all required validation

These commands are the stable project interface. Put stack-specific implementations in `scripts/project/` rather than changing how agents invoke the project.

## Project knowledge

Read documentation only when relevant:

- System structure and boundaries: `docs/architecture.md`
- Local operation, deployment, observability, and recovery: `docs/operations.md`
- Durable technical decisions: `docs/decisions/`
- Research and debugging findings: `docs/investigations/`
- Current behavioral truth: `openspec/specs/`
- Proposed behavioral changes: `openspec/changes/`
- Project-specific skills: `skills/`

Prefer following these links over loading every project document.

## Engineering workflow

1. Understand the relevant code, specification, and documentation before implementation.
2. For material behavior changes, create or update an OpenSpec change before coding.
3. Keep implementation details in design documents and observable behavior in specifications.
4. Implement the smallest coherent change and preserve unrelated work.
5. Add tests derived from requirements, including important failure paths.
6. Update specifications, architecture, operations, or decisions when their truth changes.
7. Run `./scripts/check` and resolve failures before claiming completion.

## Project rules

- Declare dependencies in the project; do not rely on unrecorded global packages.
- Never commit credentials, tokens, private keys, local `.env` files, or runtime session data.
- Add only project-specific skills here. Broadly reusable skills belong in the global environment.
- Do not duplicate detailed knowledge in this file; route agents to the authoritative document.
- Do not claim a command passed unless it was run successfully.
- If a standard command lacks a project adapter, add the adapter as part of making the project runnable.

## Definition of done

Work is complete only when requested behavior is implemented, relevant tests and knowledge are updated, `./scripts/check` passes, and remaining risks or follow-up work are stated plainly.
