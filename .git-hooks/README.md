# Setting Up Git Hooks

## **Copy the hook script to your Git hooks directory:**

```sh
cp .git-hooks/pre-rebase .git/hooks/pre-rebase
```

## Make sure the pre commit hook is executable

To make sure the pre-rebase hook is executable run this comman in unix like systems:

`chmod +x .git-hooks/pre-rebase`


## OR To simplify the setup process, you can provide a setup script in your repository. This script can automate the copying and permission-setting of the hook script.

Create a `setup-hooks.sh` file:

```sh
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
```
