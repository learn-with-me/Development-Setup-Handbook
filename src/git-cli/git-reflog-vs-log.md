# Reflog vs Log

To view the log is to view the commit history.

```sh
$ git log --oneline
$ git log --pretty=oneline
$ git log --graph --all --oneline
```

`log` is a public accounting of the repository's commit history while the `reflog` is a private, workspace-specific accounting of the repo's local commits.

## Reflog

The `reflog` is a file found in `.git\logs\refs\heads` that tracks the history of local commits for a given branch and excludes any commits that were potentially pruned away through Git garbage collection routines.

```sh
$ git reflog
```

## References

* [Git reflog vs. log: How these commit history tools differ](https://www.theserverside.com/video/Git-reflog-vs-log-How-these-commit-history-tools-differ) blog
