# Git Clone

When developers perform a git clone depth 1operation, the only thing they pull back from the remote repository is the latest commit on the specific git branch of interest. By default, it’s the master branch that gets cloned and checked out.

```sh
$ git clone --depth 1 https://github.com/<user>/<project>.git

$ git clone --depth 1 --branch release https://github.com/<user>/<project>.git
```

It’s useful for developers to have a complete git history, along with the ability to inspect any git branch used for parallel feature development when programming. But continuous integration builds, and automation scripts rarely need a commit history. They usually only need one commit on a specific branch, along with any associated git submodules. Hence, that’s what a git clone depth 1 provides.

## Resources

* [How and when to perform a git clone depth 1 example](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-and-when-to-perform-a-depth-1-git-clone) | TheServerSide blog
