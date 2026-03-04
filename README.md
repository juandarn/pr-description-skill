# PR Description Skill

An [Agent Skill](https://agentskills.io) that generates comprehensive, visual pull request descriptions with Mermaid diagrams. Compatible with **Claude Code**, **OpenCode**, and any tool that supports the Agent Skills standard.

## What it does

When you create or update a pull request, this skill automatically:

1. Analyzes all commits in the branch
2. Reads the full diff against the base branch
3. Categorizes changes (Features, Bug Fixes, Performance, etc.)
4. Generates Mermaid diagrams to visualize the changes
5. Produces a structured PR description that reviewers can scan in under 60 seconds

## Example output

The skill generates PR descriptions with:

- **Summary** - 1-3 bullet points explaining what changed and why
- **Mermaid diagrams** - Visual representation of the changes (bug fix flows, feature architecture, performance comparisons, etc.)
- **Categorized changes** - Grouped by type with bold impact titles
- **Code changes** - Key file modifications shown visually
- **Test plan** - Automated and manual test checkboxes
- **PR type** - Checkboxes for the type of change

## Installation

### Claude Code

**Personal (all projects):**

```bash
git clone https://github.com/juandarn/pr-description-skill.git /tmp/pr-description-skill
cp -r /tmp/pr-description-skill/skills/pr-description ~/.claude/skills/pr-description
rm -rf /tmp/pr-description-skill
```

**Project-specific (commit to repo):**

```bash
git clone https://github.com/juandarn/pr-description-skill.git /tmp/pr-description-skill
cp -r /tmp/pr-description-skill/skills/pr-description .claude/skills/pr-description
rm -rf /tmp/pr-description-skill
```

### OpenCode

**Personal (all projects):**

```bash
git clone https://github.com/juandarn/pr-description-skill.git /tmp/pr-description-skill
cp -r /tmp/pr-description-skill/skills/pr-description ~/.config/opencode/skills/pr-description
rm -rf /tmp/pr-description-skill
```

**Project-specific (commit to repo):**

```bash
git clone https://github.com/juandarn/pr-description-skill.git /tmp/pr-description-skill
cp -r /tmp/pr-description-skill/skills/pr-description .opencode/skills/pr-description
rm -rf /tmp/pr-description-skill
```

### Any Agent Skills compatible tool

```bash
git clone https://github.com/juandarn/pr-description-skill.git /tmp/pr-description-skill
cp -r /tmp/pr-description-skill/skills/pr-description ~/.agents/skills/pr-description
rm -rf /tmp/pr-description-skill
```

### One-liner install

**Claude Code:**
```bash
bash <(curl -s https://raw.githubusercontent.com/juandarn/pr-description-skill/main/install.sh) claude
```

**OpenCode:**
```bash
bash <(curl -s https://raw.githubusercontent.com/juandarn/pr-description-skill/main/install.sh) opencode
```

## Usage

The skill activates automatically when you ask your AI coding agent to:

- "Create a PR"
- "Open a pull request"
- "Update the PR description"
- "Write a PR description for my changes"

In Claude Code, you can also invoke it directly:

```
/pr-description
```

## Compatibility

This skill follows the [Agent Skills](https://agentskills.io) open standard and works with:

- [Claude Code](https://claude.ai/code)
- [OpenCode](https://opencode.ai)
- [Cursor](https://cursor.com)
- [Gemini CLI](https://geminicli.com)
- [GitHub Copilot](https://github.com/features/copilot)
- [Roo Code](https://roocode.com)
- And any other tool that supports the Agent Skills standard

## License

MIT
