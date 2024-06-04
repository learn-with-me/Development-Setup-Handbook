# Git Fetch vs Pull

`git fetch` is used to retrieve the latest changes from the remote repository, but it does not merge them with your local branch. This command fetches all the branches from the remote repository, along with all the commits and files that have been updated. However, it does not modify your local working branch. After fetching, you can inspect the changes and decide whether to merge them into your local branch.

The `git pull` command is a combination of two other Git commands: `git fetch` and `git merge`. It fetches changes from the remote repository and automatically merges them into the current local branch.

## Usage

```sh
# Fetch all the changes from the origin remote repository
git fetch origin

# Fetch and merge all the changes from the origin remote repository
git pull origin main
```

## Storage

The fetched changes are stored in a separate branch in your local repository. This branch is usually a remote-tracking branch, which tracks the state of the remote repository. For example, if your current branch is `main`, it'll store the retrieved changes in the `origin/main` branch in your local repository. This `origin/main` branch is a remote-tracking branch for the `main` branch on the `origin` remote.

You can view these changes by checking out the remote-tracking branch with `git checkout origin/main`, or you can compare the changes with your local branch using `git diff main origin/main`.

Remember, these changes are not merged into your local `main` branch until you run `git merge origin/main` or `git pull origin main`.

## References

* [Git Pull and Git Fetch: Understanding the Differences](https://www.linkedin.com/pulse/git-pull-fetch-understanding-differences-your-devops-guide/)
