#!/bin/bash

# Define the source and destination paths
HOOKS_DIR=".git-hooks"
TARGET_HOOKS_DIR=".git/hooks"

# Create target hooks directory if it doesn't exist
mkdir -p "$TARGET_HOOKS_DIR"

# Copy the pre-rebase hook script
cp "$HOOKS_DIR/pre-rebase" "$TARGET_HOOKS_DIR/pre-rebase"

# Make the script executable
chmod +x "$TARGET_HOOKS_DIR/pre-rebase"