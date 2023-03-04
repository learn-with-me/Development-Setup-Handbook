# Using find

## Options

```sh
-name    # search by exact match of name
-iname   # search by case insensitive match of name
-type    # type of file or folder we are looking for
-delete  # delete all the files/folders found with find command
-exec    # Run an arbitrary command on returned files
```

## Finding Files & Directories

```sh
$ find <source_folder> -name "string or expression"

# Search all the files with png extension in current directory
$ find . -name "*.png"

# Search all the folders in current directory
$ find . -type d

# Search only directories containing name
$ find . -type d -name "abc"

# Delete all png files from current folder
$ find . -name "*.png" -delete

# Compress all the files returned.
# {} signifies command to execute on each file
$ find . -name "*.png" -exec pngquant {} \;
```
