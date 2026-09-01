# agent-project-template

The canonical language-neutral project layer used by `musterctl`.

The materialized template is isolated in `template/`; repository-only CI and
validation stay outside that boundary. Catalogs should use `template` as this
repository's `source_path` and pin an immutable commit.

```bash
./scripts/check
```
