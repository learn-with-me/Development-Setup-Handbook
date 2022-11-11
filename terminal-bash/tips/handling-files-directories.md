# Handling Files & Directories

### List files and directories

```
$ ls -l

-l    # long listing of files
-la   # long listing with hidden files
-G    # Colorize output
```

### View contents of a file

```
$ cat <file_name>
-n    # show line numbers

To browse large files with scrolling capability
$ less <file_name>

pressing
g            # takes you to the top of the file
Shift + g    # takes you to the bottom of the file
/string      # search for a string in the file and highlight if exists
q            # exit file listing

$ open <directory>        # shows folder content in finder. Helpful especially in hidden folders
$ open <file>             # opens the file in default editor tied to the file extension
$ open <file> -a TextEdit # opens the file in specific application
```

### Create and Delete a file/folder

```
Create a file
$ touch file.txt

Write to a file
$ echo 'hi' > file.txt    # Overwrite previous content of a file if exists or create a new file
$ echo 'hi' >> file.txt   # Writes to file in append mode

Delete a file
$ rm file.txt

Create a folder
$ mkdir folder
$ mkdir -p a/b/c        # p flag lets us create intermediary directories defined in the path

Delete a directory
$ rm -rf folder         # recursively removes the folder and everything in it.
                          f forces not to ask for confirmation of removing the directory and contents

$ cp                    # copy file. Use -R flag for recursive copy of multiple files
$ mv                    # move file(s)
```
