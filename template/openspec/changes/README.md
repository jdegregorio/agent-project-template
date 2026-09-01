# Proposed changes

Each material behavior change gets a kebab-case directory here. The default spec-driven workflow produces:

```text
openspec/changes/<change-name>/
├── proposal.md
├── design.md
├── tasks.md
└── specs/
    └── <capability>/
        └── spec.md
```

Review these artifacts before implementation. Completed changes move to `openspec/changes/archive/` and their delta specs merge into `openspec/specs/`.
