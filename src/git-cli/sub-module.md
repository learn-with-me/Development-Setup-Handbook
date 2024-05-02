# Git SubModule

It often happens that while working on one project, you need to use another project from within it. Perhaps it’s a library that a third party developed or that you’re developing separately and using in multiple parent projects. A common issue arises in these scenarios: you want to be able to treat the two projects as separate yet still be able to use one from within the other.

Git addresses this issue using submodules. Submodules allow you to keep a Git repository as a subdirectory of another Git repository. This lets you clone another repository into your project and keep your commits separate.

Submodules are registered in a `.gitmodules` files in the project repository.

```sh
# Add a git submodule
git submodule add <module_repo_path>

# Remove a git submodule
git submodule deinit <module_name>
```

## References

* [7.11 Git Tools - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
* [git-submodule command](https://git-scm.com/docs/git-submodule) doc
