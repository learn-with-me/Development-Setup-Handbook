# Search text with grep

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
