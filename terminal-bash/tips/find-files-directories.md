# Finding Files & Directories

```
$ find <source_folder> -name "string or expression"
$ find . -name "*.png"          # Search all the files with png extension in current directory
$ find . -type d                # Search all the folders in current directory
$ find . -type d -name "abc"    # Search only directories containing name
$ find . -name "*.png" -delete  # Delete all png files from current folder
$ find . -name "*.png" -exec pngquant {} \;   # Compress all the files returned.
                                                {} signifies command to execute on each file

-name    # search by exact match of name
-iname   # search by case insensitive match of name
-type    # type of file or folder we are looking for
-delete  # delete all the files/folders found with find command
-exec    # Run an arbitrary command on returned files
```
