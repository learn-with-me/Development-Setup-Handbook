# Merge vs Rebase

> Note: This page does not cover all possible scenarios, but only commonly used strategies.

Your master/main branch should be the only source of truth for your application.

Generally, you'll create a new branch off of your main branch, add new features in your local branch, create a pull request to the main branch, and then merge your code. When you're pushing new code to you main branch, you'd want to `merge` your changes in the main branch. This is because you are creating new commits.

Every once in a while, before you merge your changes in main branch, you want your local branch to be up to date with the master/main branch. You local branch can get behind the main branch when more than one developer is working on the project. To catch up your local branch with the new commits in main branch, you'd use a strategy called `rebase`. You should never merge commits from your main branch to your local branch, because those commits were already accepted in your main branch, and your main branch is supposed to be the only source of truth. 

## Git Merge

In an ideal world you wouldn't normally need to merge commits via CLI. You'll normally merge to the main branch, and do that via pull requests. However if you do need to merge, here is how to do it.

```sh
$ git checkout <destination_branch>
$ git merge <source_branch>
$ git reflog
$ git push origin <destination_branch>
```

## Git Rebase

If you want to pull the latest commits from main branch and then apply the commits from your local branch on top of them, use rebase. 

Generally you'd use this before creating a pull request, to make sure it does not end up in a conflict, and that your code still runs as expected after taking the latest code from main branch. You do this for a fact that the code in main branch is the application code that has been accepted in production, so it is your responsibility to make sure that the code in local branch works as expected with the latest code in main branch.

```sh
$ git rebase <main_branch> <local_branch>

# Default push (without force) will be rejected
$ git push origin --force
```

Rebase does change your local commit id(s). It actually deleted the old commits, rebased main branch on your local branch, and then wrote brand new commits with new commit id(s).

> Note: if you rebase and try to push to GitLab or GitHub, the server won’t allow the operation to be performed. To rebase to GitHub or GitLab, a developer must add the `–force` switch to the git push command to compel the changes to be accepted.

## References

* [How to Git rebase a branch to master by example](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-Git-rebase-a-branch-to-master-example) blog
