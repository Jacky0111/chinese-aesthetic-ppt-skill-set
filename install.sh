#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./install.sh <skill-id> [target skills directory]
  ./install.sh --platform <platform> [--project <project directory>] <skill-id>

Platforms (default: agents):
  agents, codex, copilot, opencode, kimi, openclaw   ~/.agents/skills
  claude                                             ~/.claude/skills (honors CLAUDE_CONFIG_DIR)
  hermes                                             ~/.hermes/skills
  grok                                               ~/.grok/skills

--project installs into the matching folder inside that project instead.
This script does not install into Doubao; package style skills with python3 tooling/package_doubao.py.
EOF
}

fail() {
  echo "$1" >&2
  exit 2
}

skill_id=""
custom_root=""
platform=""
project=""
positional=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      usage
      exit 0
      ;;
    --platform|--project)
      if [[ $# -lt 2 || -z "$2" || "$2" == -* ]]; then
        fail "Option $1 needs a value."
      fi
      if [[ "$1" == "--platform" ]]; then platform="$2"; else project="$2"; fi
      shift 2
      ;;
    -*)
      fail "Unknown option: $1"
      ;;
    *)
      positional=$((positional + 1))
      case "$positional" in
        1) skill_id="$1" ;;
        2) custom_root="$1" ;;
        *) usage >&2; exit 2 ;;
      esac
      shift
      ;;
  esac
done

if [[ $positional -lt 1 ]]; then
  usage >&2
  exit 2
fi
if [[ ! "$skill_id" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  fail "Invalid skill ID: ${skill_id}"
fi
if [[ -n "$custom_root" && -n "${platform}${project}" ]]; then
  fail "A target directory cannot be combined with --platform or --project."
fi

platform="${platform:-agents}"
case "$platform" in
  agents|codex|copilot|opencode|kimi|openclaw)
    user_root="${HOME}/.agents/skills"
    project_subdir=".agents/skills"
    ;;
  claude)
    user_root="${CLAUDE_CONFIG_DIR:-${HOME}/.claude}/skills"
    project_subdir=".claude/skills"
    ;;
  hermes)
    user_root="${HOME}/.hermes/skills"
    project_subdir=".agents/skills"
    ;;
  grok)
    user_root="${HOME}/.grok/skills"
    project_subdir=".grok/skills"
    ;;
  doubao)
    fail "This script does not install into Doubao. Package a style skill instead: python3 tooling/package_doubao.py <style-skill-id>"
    ;;
  deepseek)
    fail "DeepSeek is a model provider. Choose --platform for the tool you actually use."
    ;;
  *)
    fail "Unknown platform: ${platform} (run ./install.sh --help for the choices)"
    ;;
esac

repo_root="$(cd "$(dirname "$0")" && pwd)"
source_dir="${repo_root}/.agents/skills/${skill_id}"
if [[ ! -f "${source_dir}/SKILL.md" ]]; then
  echo "Skill not found: ${skill_id}" >&2
  exit 1
fi

if [[ -n "$custom_root" ]]; then
  skill_root="$custom_root"
elif [[ -n "$project" ]]; then
  if [[ ! -d "$project" ]]; then
    echo "Project directory not found: ${project}" >&2
    exit 1
  fi
  skill_root="${project%/}/${project_subdir}"
else
  skill_root="$user_root"
fi
target_dir="${skill_root}/${skill_id}"

mkdir -p "$skill_root"
if [[ -e "$target_dir" || -L "$target_dir" ]]; then
  echo "Target already exists: ${target_dir}. Move or remove it first; nothing was overwritten." >&2
  exit 1
fi
cp -R "$source_dir" "$target_dir"
echo "Installed ${skill_id} to ${target_dir}"

if [[ "$platform" == "hermes" && -n "$project" ]]; then
  # printf %q in bash 3.2 mangles multibyte paths, so single-quote instead.
  quoted="'$(printf '%s' "$project" | sed "s/'/'\\\\''/g")'"
  echo "Hermes loads project skills only after you trust the project. Run it yourself: hermes skills trust ${quoted}"
fi
if [[ "$platform" == "openclaw" && -z "$project" ]]; then
  echo "Note: OpenClaw reads ~/.agents/skills only with its default state directory."
fi
