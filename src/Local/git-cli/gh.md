# gh

`gh` is GitHub on the command line. It brings pull requests, issues, and other GitHub concepts to the terminal next to where you are already working with `git` and your code.

## Getting started

### Installation

```sh
brew install gh
```

### Common commands

```sh
# Lists PR associated with current branch, PRs created by you, PRs requesting review from you
gh pr status
```

### Working with Copilot

```sh
# Installing Copilot in the CLI
gh auth login
gh extension install github/gh-copilot
gh extension upgrade gh-copilot

# Usage
gh copilot SUBCOMMAND
gh copilot SUBCOMMAND --help

# Explain
gh copilot explain
gh copilot explain "sudo apt-get"

# Suggest
gh copilot suggest
gh copilot suggest "Install git"
```

## Resources

* [GitHub CLI](https://github.com/cli/cli)
* [GitHub CLI manual](https://cli.github.com/manual/)
* [About GitHub Copilot in the CLI](https://docs.github.com/en/copilot/github-copilot-in-the-cli/about-github-copilot-in-the-cli)
