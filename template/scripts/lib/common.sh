#!/usr/bin/env bash

set -euo pipefail

script_library_dir="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_root="$(CDPATH= cd -- "$script_library_dir/../.." && pwd)"

note() {
  printf '%s\n' "$*"
}

fail() {
  printf 'error: %s\n' "$*" >&2
  exit 1
}

run_project_hook() {
  local hook_name="$1"
  shift

  local hook_path="$project_root/scripts/project/$hook_name"
  if [[ ! -e "$hook_path" ]]; then
    return 2
  fi
  if [[ ! -x "$hook_path" ]]; then
    fail "$hook_path exists but is not executable"
  fi

  "$hook_path" "$@"
}
