#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 || $# -gt 2 ]]; then
  echo "Usage: ./install.sh <skill-id> [target skills directory]" >&2
  exit 2
fi

skill_id="$1"
if [[ ! "$skill_id" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "Invalid skill ID: $skill_id" >&2
  exit 2
fi
repo_root="$(cd "$(dirname "$0")" && pwd)"
source_dir="$repo_root/.agents/skills/$skill_id"
skill_root="${2:-$HOME/.agents/skills}"
target_dir="$skill_root/$skill_id"

if [[ ! -f "$source_dir/SKILL.md" ]]; then
  echo "Skill not found: $skill_id" >&2
  exit 1
fi

mkdir -p "$skill_root"
if [[ -e "$target_dir" ]]; then
  echo "Target already exists: $target_dir. Move or remove it first; nothing was overwritten." >&2
  exit 1
fi
cp -R "$source_dir" "$target_dir"
echo "Installed $skill_id to $target_dir"
