# Setting Up Git Hooks

## **Copy the hook script to your Git hooks directory:**

```sh
cp .git-hooks/pre-rebase .git/hooks/pre-rebase
```

## Make sure the pre commit hook is executable

To make sure the pre-rebase hook is executable run this comman in unix like systems:

`chmod +x .git-hooks/pre-rebase`


## OR This script can automate the copying and permission-setting of the hook script. Simple run the next command in terminal and it will create the pre-rebase hook and activates it self.

`./setup-hooks.sh`
