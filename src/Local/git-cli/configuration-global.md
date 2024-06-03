# Git Configuration (Global)

When you initialize a git repository, or work on an existing repository, by default there is no need for additional configuration. All configurations on this page are optional.

## Core configurations

Global configurations are the ones that apply to all repositories.

> Note: You can always use any of the global configuration `locally` by removing `--global` flag from the command.

```sh
# Set the user name associated with all local commits
git config --global user.name "First Last"

# Set the user email associated with all local commits
git config --global user.email "username@gmail.com"

# View all of the global configurations set
git config --list

# To manually edit global configuration, edit the config file directly
nano ~/.gitconfig
```

### alias

This configuration allows you to create shortcuts for Git commands. For example, you can create an alias `co` for the `checkout` command.

```sh
git config --global alias.co checkout
```

### pull.rebase

This configuration determines whether git pull performs a `rebase` (true) instead of a `merge` (false) by default.

The default merge means that when you pull changes from a remote repository, Git will create a `new merge commit` in your local repository that combines your changes with the changes from the remote repository.

However, this can lead to a `cluttered commit history`, especially if you're working on a feature branch and frequently pulling in changes from the main branch. Every time you pull, a new merge commit is created, which can make it harder to understand the history of your feature branch.

```sh
git config --global pull.rebase true
```

Setting `pull.rebase` to `true` changes the default behavior of `git pull` to perform a rebase operation instead of a merge. This means that when you pull changes from a remote repository, Git will replay your changes on top of the changes from the remote repository, instead of creating a new merge commit. This can result in a cleaner and more linear commit history.

If there are `uncommitted` local changes, and there is `no conflict`, Git will perform the rebase operation successfully. Your local changes will still be present after the pull operation.

If there are `uncommitted` local changes, and there is `a conflict`, Git will not be able to perform the rebase and will give you an error message. You will need to either commit or `stash` your changes before you can pull the remote changes.

`Untracked` files are not affected by git pull, regardless of the pull.rebase setting. They remain untracked unless you add them to the staging area.

### pull.ff

Determines how git pull operates when there are `no conflicts` between the local and remote branches. The `pull.ff` configuration can be set to `true`, `false`, or `only`.

```sh
git config --global pull.ff only
```

When `pull.ff` is set to `only`, Git will only allow fast-forward merges when performing a `git pull`. A `fast-forward merge` is possible when the tip of the branch you are trying to merge into is a direct ancestor of the branch you want to merge. In other words, the branches have not diverged.

If a fast-forward merge is not possible (i.e., the branches have diverged), Git will not perform the merge and will give you an error message. This can be useful if you want to ensure that your commit history is linear and avoid merge commits.

### push.default

This configuration determines the default behavior of `git push`. The `simple` mode, which is the `default` in recent versions of Git, only pushes the current branch to its corresponding upstream branch.

Changing the default push behavior can be useful in different scenarios. For example, if you're working on a feature branch and you want to ensure that you only push changes to that branch, you might set `push.default` to `current`. This way, when you run `git push` without specifying a branch, Git will only push the current branch.

```sh
git config --global push.default simple
```

Other options include:

- **nothing**: This option will not push anything unless you specify the branch you want to push.  
- **current**: This option pushes the current branch to its upstream branch.  
- **upstream**: This option pushes the current branch to its upstream branch, but it also requires the upstream branch to be set.  
- **simple** (default in recent versions of Git): This option is similar to upstream, but it also verifies that the upstream branch has the same name as the local one.  
- **matching** (default in older versions of Git): This option pushes all branches that have the same name in both local and remote repositories.

### color.ui

This configuration enables color output in the terminal for Git commands.

```sh
git config --global color.ui auto
```

### credential.helper

This configuration allows Git to remember your credentials for a certain period of time so you don't have to enter them every time you perform a remote operation.

```sh
git config --global credential.helper cache
```

## Core configurations

### core.editor

The `core.editor` configuration in Git is used to specify the default text editor that Git will use when it needs to open a file for you to edit. This typically happens in several situations:

- **Commit Messages**: When you run git commit without the -m option, Git opens the default text editor for you to write a commit message.  
- **Interactive Rebase**: During an interactive rebase (git rebase -i), Git opens the default text editor for you to choose which commits to modify, squash, reword, etc.  
- **Merge Conflicts**: When a merge conflict occurs, Git opens the default text editor for you to resolve the conflict.  

```sh
git config --global core.editor "vim"
git config --global core.editor "code"
```

By setting this configuration, you can choose an editor that you are comfortable with. If you don't set this configuration, Git will use the system's default editor, which is usually Vim or Nano on Unix-based systems, and may not be the editor you are most comfortable with.

### diff.tool

Configure the tool to be used to view diffs.

```sh
git config --global diff.tool "your_diff_tool"
git config --global diff.tool "vim"
```

### merge.tool

Configure the tool to be used for merge conflicts.

```sh
git config --global merge.tool "your_merge_tool"
git config --global merge.tool "vim"
```

## pull.rebase vs pull.ff

The `pull.rebase` and `pull.ff` control different aspects of the git operation.

1. `pull.rebase`: When set to `true`, this configuration changes the behavior of `git pull` to perform a rebase instead of a merge. This means that when you pull changes from a remote repository, Git will replay your local commits on top of the changes from the remote repository, instead of creating a new merge commit. This can result in a cleaner and more linear commit history.

2. `pull.ff`: When set to `only`, this configuration changes the behavior of `git pull` to only allow fast-forward merges. A fast-forward merge is possible when the tip of the branch you are trying to merge into is a direct ancestor of the branch you want to merge. If a fast-forward merge is not possible (i.e., the branches have diverged), Git will not perform the merge and will give you an error message.

`pull.rebase true` and `pull.ff only` both aim to maintain a clean and linear commit history, but they do so in different ways. `pull.rebase true` does this by avoiding merge commits, while `pull.ff only` does this by only allowing fast-forward merges.

## References

- https://www.moncefbelyamani.com/first-things-to-configure-before-using-git/
