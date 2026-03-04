#!/bin/bash
set -e

REPO_URL="https://github.com/juandarn/pr-description-skill.git"
TMP_DIR=$(mktemp -d)
SKILL_NAME="pr-description"

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

git clone --depth 1 "$REPO_URL" "$TMP_DIR" 2>/dev/null

TARGET="$1"

case "$TARGET" in
  claude)
    DEST="$HOME/.claude/skills/$SKILL_NAME"
    ;;
  opencode)
    DEST="$HOME/.config/opencode/skills/$SKILL_NAME"
    ;;
  agents)
    DEST="$HOME/.agents/skills/$SKILL_NAME"
    ;;
  *)
    echo "PR Description Skill Installer"
    echo ""
    echo "Usage: $0 <target>"
    echo ""
    echo "Targets:"
    echo "  claude    Install to ~/.claude/skills/ (Claude Code)"
    echo "  opencode  Install to ~/.config/opencode/skills/ (OpenCode)"
    echo "  agents    Install to ~/.agents/skills/ (Agent Skills standard)"
    echo ""
    echo "Examples:"
    echo "  $0 claude"
    echo "  $0 opencode"
    exit 1
    ;;
esac

mkdir -p "$DEST"
cp -r "$TMP_DIR/skills/$SKILL_NAME/"* "$DEST/"

echo "Installed $SKILL_NAME skill to $DEST"
echo "Restart your AI coding agent to pick up the new skill."
