# Common Tasks in Git

## Change commit message

```sh
# Change last commit message
$ git commit --amend
```

## Handling Branches

```sh
# Fetch all remote branches
$ git fetch origin

# List the branches available for checkout
git branch -a

# Pull changes from a remote branch
# git automatically sets the local branch to track the remote branch
git checkout -b my-branch origin/my-branch
```

### Creating branch locally

```sh
# create a new branch
git branch new-branch

# change environment to the new branch
git checkout new-branch

# create a change
touch new-file.js

# commit the change
git add .
git commit -m "add new file"

# push to a new branch
git push --set-upstream origin new-branch
```
