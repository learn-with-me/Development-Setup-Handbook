# Git LFS

A Git extension for versioning large files (even couple GB in size).

Git Large File Storage (LFS) `replaces` large files such as audio samples, videos, datasets, and graphics with `text pointers` inside Git, while storing the file contents on a remote server like GitHub.com or GitHub Enterprise.

## Usage

First, you need to install Git LFS, then specify which files should be tracked by Git LFS. You can commit and push files to your repository as you normally would with Git. Git LFS `automatically replaces` the large files with text pointers and uploads the file contents to the Git LFS server.

When you clone a repository with LFS files or pull changes that include LFS files, Git LFS downloads the file contents `as needed`.

```sh
# Install Git LFS
git lfs install

# Specify files to be tracked
# This command creates or updates a .gitattributes file with the paths of files that should be tracked by Git LFS.
git lfs track "*.jpg"

# Commit large file
git add file.jpg
git commit -m "Add large file"
git push origin main
```

## Custom server

```sh
# Set custom lfs server url
git config lfs.url "https://your-lfs-server.com"
```

If your Git LFS server requires authentication, you'll need to provide your credentials. Git LFS uses the same credentials as Git itself, so if you're already authenticated with Git, you should be able to use Git LFS without any additional steps.

Alternatively, you can use a credential helper to store your username and password.

```sh
# Set the credential helper
git config --global credential.helper store
```

The next time you push or pull from the server, Git will ask for your `username` and `password`, and then it will store them for future use.

The `credential.helper` command sets the credential helper to `store`, which stores your credentials on disk in a plain text file. If you want a more secure method, you can use `cache` (which stores credentials in memory for a certain period of time) or `osxkeychain` (on macOS, which stores credentials in the secure keychain).

## References

* [git-lfs](https://git-lfs.com/)
* Git LFS [Wiki](https://github.com/git-lfs/git-lfs/wiki)
* [man docs](https://github.com/git-lfs/git-lfs/tree/main/docs/man)
* Details of how the Git LFS client works are in the [official specification](https://github.com/git-lfs/git-lfs/blob/main/docs/spec.md).
* Details of how the GIT LFS server works are in the [API specification](https://github.com/git-lfs/git-lfs/tree/main/docs/api).
