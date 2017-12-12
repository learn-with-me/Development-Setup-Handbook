# Git Cheatsheet

##### Commands - Git Basics

```
> git --version                           // Displays version of Git installed
> git init                                // Initialize the current folder as a git repository
> git init <directory>                    // Initialize the directory specified as a git repository
> git clone <repo-url/path>               // Clone an existing remote repo or local repo onto local machine
> git status                              // List which files are staged, unstaged and untracked
> git add <directory>                     // Stage all changes in directory for the next commit
> git commit -m "<message>"               // Commit the staged snapshot with <message> as commit message
> git log                                 // Display the entire commit history using default format. (customize)
> git diff                                // Show unstaged changes between your index and working directory.
> git diff HEAD                           // Show difference between working directory and last commit
> git diff --cached                       // Show difference between staged changes and last commit
```

##### Commands - Undoing Changes

```
> git revert <commit>        // Create new commit that undoes all of the changes made in <commit>, then apply
> git reset                  // Reset staging area to match most recent commit, but leave code unchanged
> git reset <file>           // Remove <file> from staging area
> git reset --hard           // Reset staging area and working directory
> git reset <commit>         // Move current branch tip backward to <commit>, reset staging area but NOT local code
> git reset --hard <commit>  // Move current branch tip backward to <commit>, reset staging area as well as local code
> git clean -n               // ------- read more
```

##### Commands - Git Branches

```
> git branch                  // List all of the branches in your repo
> git checkout <branch>       // Checkout an existing branch named <branch>
> git checkout -b <branch>    // Create and checkout a new branch named <branch>
> git merge <branch>          // Merge <branch> into current branch
```

##### Commands - Remote Repositories

```
> git remote add <name> <url>        // Create a new connection to remote repo. <name> is shortcut for <url>
> git remote set-url <name> <url>    // Update the remote repo url to <url> with shortcut <name>
> git fetch <remote> <branch>        // Fetches a specific <branch> from the remote repo.
> git pull <remote>                  // Fetch the specified remote's copy of current branch and merge into local copy
> git push <remote> <branch>         // Push the <branch> to <remote>, along with necessary commits and objects.
                                     // Creates named branch in remote if doesn't exist
```

##### Note

```
> git add .                        // Will only add new files and modified files to the index to be committed
> git add -A                       // Will do everything + also schedule removed files for deletion
```



