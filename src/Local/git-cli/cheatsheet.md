# Git Cheatsheet

## Git Basics

```sh
# Displays version of Git installed
$ git --version

# Initialize the current folder or directory as a git repository
$ git init
$ git init <directory>

# Clone an existing remote repo or local repo onto local machine
$ git clone <repo-url/path>

# List which files are staged, unstaged and untracked
$ git status

# Stage all changes in directory for the next commit
# Will only add new files and modified files to the index to be committed
$ git add <directory>
# Stage all changes in the repository
$ git add -A

# Commit the staged snapshot with <message> as commit message
$ git commit -m "<message>"

# Update last commit message
$ git commit --amend

# Display the entire commit history using default format.
$ git log

# Show unstaged changes between your index and working directory
$ git diff
# Show difference between working directory and last commit
$ git diff HEAD
# Show difference between staged changes and last commit
$ git diff --cached
```

## Undoing Changes

```sh
# Create new commit that undoes all of the changes made in <commit>, then apply
$ git revert <commit>

# Discard changes in working directory or the staging area
$ git restore <file>
# Restore myfile.txt in staging area and working directory to the state of last commit (HEAD)
$ git restore --source=HEAD --staged --worktree myfile.txt

# Reset staging area to match most recent commit, but leave code unchanged
$ git reset
# Remove <file> from staging area
$ git reset <file>
# Reset staging area and working directory
$ git reset --hard
# Move current branch tip backward to <commit>, reset staging area but NOT local code
$ git reset <commit>
# Move current branch tip backward to <commit>, reset staging area as well as local code
$ git reset --hard <commit>
# Move HEAD (and the branch pointer) one commit back, discarding the last commit and all changes in the staging area and the working directory
$ git reset --hard HEAD~1

# Remove untracked files from your working directory
$ git clean
# Perform a "dry run" of the git clean
# Shows what files would be removed from the working directory, but it won't actually remove them.
$ git clean -n
```

## Git Branches

```sh
# List all of the branches in your repo
$ git branch

# Checkout an existing branch named <branch>
$ git checkout <branch>

# Create and checkout a new branch named <branch>
$ git checkout -b <branch>

# Merge <branch> into current branch
$ git merge <branch>
```

## Remote Repositories

```sh
# Create a new connection to remote repo. <name> is shortcut for <url>
$ git remote add <name> <url>

# Update the remote repo url to <url> with shortcut <name>
$ git remote set-url <name> <url>

# Fetches a specific <branch> from the remote repo.
$ git fetch <remote> <branch>

# Fetch the specified remote's copy of current branch and merge into local copy
$ git pull <remote>

# Push the <branch> to <remote>, along with necessary commits and objects
$ git push <remote> <branch>
#Creates named branch in remote if doesn't exist
```
