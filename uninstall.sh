#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CODEX_DIR="${HOME}/.codex"
MANIFEST="${CODEX_DIR}/.workflow-install-manifest"

echo "=== Codex Workflow Uninstall ==="

rm -f "${CODEX_DIR}/AGENTS.md"

for skill_dir in "${REPO_DIR}"/skills/*; do
  skill_name="$(basename "${skill_dir}")"
  rm -rf "${CODEX_DIR}/skills/${skill_name}"
done

for script_path in "${REPO_DIR}"/scripts/*; do
  script_name="$(basename "${script_path}")"
  rm -f "${CODEX_DIR}/workflow/${script_name}"
done

if [[ -f "${MANIFEST}" ]]; then
  backup_dir="$(awk -F= '/^backup_dir=/{print $2}' "${MANIFEST}")"
  if [[ -n "${backup_dir}" && -f "${backup_dir}/AGENTS.md" ]]; then
    cp "${backup_dir}/AGENTS.md" "${CODEX_DIR}/AGENTS.md"
    echo "Restored AGENTS.md from ${backup_dir}"
  fi
  rm -f "${MANIFEST}"
fi

echo "Uninstall complete."
