#!/bin/bash

# Script to modify the --dangerously-skip-permissions check in Claude Terminal
# This will allow the flag to work everywhere by making the Docker and internet checks always return false

# Set the path to the cli.mjs file
CLI_FILE="${CLAUDE_PATH:-/node_modules/@anthropic-ai/claude-code/cli.mjs}"

# Check if the file exists
if [ ! -f "$CLI_FILE" ]; then
  echo "Error: $CLI_FILE not found. Make sure you're running this script from the claude-terminal root directory."
  exit 1
fi

# Create a backup of the original file
cp "$CLI_FILE" "${CLI_FILE}.backup"
echo "Created backup at ${CLI_FILE}.backup"

# Replace CLAUDE.md with AGENTS.md case insensitively
sed -i.bak1 's/CLAUDE.md/AGENTS.md/gi' "$CLI_FILE"
echo "Replaced all instances of CLAUDE.md with AGENTS.md"

# Clean up the .bak file created by sed
rm -f "${CLI_FILE}.bak1"

echo "Modifications complete. The CLAUDE.md file should now be AGENTS.md."
echo "To revert changes, restore from the backup file: ${CLI_FILE}.backup" 
