# Claude AGENTS

A wrapper for the Claude CLI that can run in AGENTS.md mode - ignoring CLAUDE.md and using AGENTS.md (like every other editor).

## What's New 🎉

- Switch between CLAUDE and AGENTS modes
- Use the handy `cl` bash wrapper for quick mode switching
- Mode preference is saved between sessions
- **NEW**: Auto-start Claude after mode switch

## Installation

```bash
# Install
npm install -g claude-agents-md
```

The first time you run `claude-agents-md`, you will be presented with a consent prompt explaining the security implications. You must explicitly agree to continue.

Your consent choice is remembered for future runs.

### Using command-line flags

```bash
# Run in CLAUDE mode (normal Claude CLI behavior)
claude-agents-md --claude
claude-agents-md --no-agents

# Run in AGENTS mode (default)
claude-agents-md
```

### Using mode commands

```bash
# Switch to AGENTS mode
claude-agents-md mode agents

# Switch to CLAUDE mode
claude-agents-md mode claude

# Check current mode
claude-agents-md mode
```

## Visual Mode Indicators

The tool now shows clear visual indicators of which mode you're in:

- **AGENTS Mode**: `[AGENTS]` prefix in yellow 🔥
- **CLAUDE Mode**: `[CLAUDE]` prefix in cyan 🛡️

## Usage

```bash
claude-agents-md [options]
```

All arguments and options are passed directly to the Claude CLI.

This wrapper in AGENTS mode:
1. Checks for and automatically installs updates to the Claude package
2. Displays "🔥 AGENTS MODE ACTIVATED 🔥" warning in yellow text
3. Creates a modified copy of the Claude CLI code to use AGENTS.md
4. Leaves the original Claude CLI file untouched (won't affect your normal `claude` command)

In CLAUDE mode, it simply runs the original Claude CLI without modifications.

## Why?

You want to use AGENTS.md

## Debugging

If you encounter any issues, you can run with debug output:

```bash
DEBUG=1 claude-agents-md
```

This will show additional information about:
- Claude package update checks
- Current and latest available versions
- When updates are being installed
- Modifications being made to the CLI file

## Auto-Update Feature

Claude AGENTS automatically checks for updates to the Claude package each time it runs:

1. When you run `claude-agents-md`, it checks for the latest version of `@anthropic-ai/claude-code` on npm
2. If your installed version is outdated, it will:
   - Update your package.json with the latest version
   - Run npm install to get the newest version
   - Notify you that an update was applied
3. This ensures you're always using the latest Claude CLI features

## Important Security Disclaimer

This is an unofficial tool and not supported by Anthropic. Use at your own risk.
