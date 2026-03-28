#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CODEX_DIR="${HOME}/.codex"
BACKUP_ROOT="${CODEX_DIR}/.workflow-backups"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="${BACKUP_ROOT}/${STAMP}"
MANIFEST="${CODEX_DIR}/.workflow-install-manifest"

echo "=== Codex Workflow Installer ==="
echo "Repo:   ${REPO_DIR}"
echo "Target: ${CODEX_DIR}"
echo

mkdir -p "${CODEX_DIR}" "${CODEX_DIR}/skills" "${CODEX_DIR}/workflow" "${BACKUP_ROOT}"

if [[ -e "${CODEX_DIR}/AGENTS.md" && ! -L "${CODEX_DIR}/AGENTS.md" ]]; then
  mkdir -p "${BACKUP_DIR}"
  cp "${CODEX_DIR}/AGENTS.md" "${BACKUP_DIR}/AGENTS.md"
  echo "Backed up existing AGENTS.md to ${BACKUP_DIR}/AGENTS.md"
fi

rm -f "${CODEX_DIR}/AGENTS.md"
ln -s "${REPO_DIR}/AGENTS.md" "${CODEX_DIR}/AGENTS.md"
echo "Linked AGENTS.md"

for skill_dir in "${REPO_DIR}"/skills/*; do
  skill_name="$(basename "${skill_dir}")"
  target="${CODEX_DIR}/skills/${skill_name}"
  rm -rf "${target}"
  ln -s "${skill_dir}" "${target}"
  echo "Linked skill: ${skill_name}"
done

for script_path in "${REPO_DIR}"/scripts/*; do
  script_name="$(basename "${script_path}")"
  target="${CODEX_DIR}/workflow/${script_name}"
  rm -f "${target}"
  ln -s "${script_path}" "${target}"
  echo "Linked script: ${script_name}"
done

cat > "${MANIFEST}" <<EOF
repo=${REPO_DIR}
backup_dir=${BACKUP_DIR}
installed_at=${STAMP}
EOF

echo
echo "Install complete."
echo
echo "Suggested aliases:"
echo "  alias cdx=\"\$HOME/.codex/workflow/cdx\""
echo "  alias cdxfast=\"\$HOME/.codex/workflow/cdx-fast\""
echo "  alias cdxlong=\"\$HOME/.codex/workflow/cdx-long\""
echo "  alias cdxa=\"\$HOME/.codex/workflow/cdxa\""
echo "  alias cdxui=\"\$HOME/.codex/workflow/cdx-ui\""
echo "  alias cdxr=\"\$HOME/.codex/workflow/cdx-review\""
echo "  alias gitready=\"\$HOME/.codex/workflow/git-ready\""
