# Bash Automation & Commands

#### Commands

###### List files and directories

```
$ ls -l

-l    # long listing of files
-la   # long listing with hidden files
-G    # Colorize output
```

###### View contents of a file

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

###### Create and Delete a file/folder

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

###### Braces Expansion

```
This is a cool technique to perform multiple operations via a simple modification

$ cp config.json{,.backup}        # copy existing file as config.json.backup
$ mkdir -p project/{a,b,c}/src    # Create multiple directory structures.
    $ tree                            # Validate the directory structures created above
$ echo pre-{a,b,c}-post           # Returns pre-a-post, pre-b-post, pre-c-post
$ echo {1..10}                    # Returns integer sequence 1 to 10
$ echo {a..j}                     # Returns char sequence from a to j

Part of the expansion are few unique commands
$ !!                 # Runs the last command executed. Useful when you forgot to add sudo
$ sudo !!

$ !$                 # Refers to the last argument of the previous command
$ touch script.sh
$ chmod +x !$        # This will already know to replace script.sh here
```

###### Find a files and folders

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

###### Search text with grep

```
$ grep <string> <file(s)>
$ grep --color "awesome" file.txt    # highlights the string occurrence in the file
$ grep "awesome" ~/*.txt        # Search all text files in current folder containing string awesome
$ grep "awesome" ~/**/*.txt     # Search all text files including sub-folder files containing string awesome

-- color    # highlights the text searched
-n          # lists line number the text was found on
-C 1        # returns the context for each file (line one above and one below)
-e          # pass in RegEx instead of string
```

###### Making HTTP requests in bash with curl

```
$ curl <url>
$ curl https://google.com        # most basic GET call
$ curl -i https://swapi.co/api/people/2
$ curl -H "Authorization: Bearer 123" localhost:3000/api/posts
$ curl -X POST -H "Content-Type: application/json" -d '{"title": "new post"}' localhost:3000/api/posts
$ curl -i -X POST --data-urlencode title="new post" active="y" localhost:3000/api/posts
$ curl -X POST \
       -H "Content-Type: application/json" \
       -d '{"title": "new post"}' \
       localhost:3000/api/posts                     # line break for readibility
$ curl -iL https://google.com -o response.json      # Write large json responses to file instead
$ curl -iL https://google.com | jsome               # Format the response. jsome is a global node module

-i        # include response headers
-I        # return only response headers
-iL       # Follow redirects if the server is trying to redirect the request
-H        # Send headers in request
-X        # Change the HTTP method of the request
-d        # Pass a request body
-o        # Output the response to a file
-s        # Execution to be silent and without progress bar if any (like in case of storing to a file)
--data-urlencode    # Post in a url-encoded form

Additional Operations
$ curl -I https://google.com | head -n 1       # returns only first line of response headers
$ curl -I https://google.com | head -n 1 | cut -d ' ' -f 2       # returns 2nd part of first line
```

###### Pipes

```
Pipes pass output of one command to the next command

$ uglify -c -m -- index.js | gzip -9 | wc -c

uglify    # npm module installed globally
-c        # compress file
-m        # minify file
-9        # Compress to maximum
-c        # Return byte count instead of word count
```



