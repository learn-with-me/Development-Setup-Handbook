# Using grep

## Options

```sh
-n          # lists line number the text was found on
-v          # exclude text from line
-C 1        # returns the context for each file (line one above and one below)
-e          # pass in RegEx instead of string
--color     # highlights the text searched

# Note: multiple flags can be used together
# Example: -c -v or -cv
```

## Usage

```sh
# Search text with grep
$ grep <string> <file(s)>

# Search in one file
$ grep "awesome" file.txt

# Search in all txt files in current folder
$ grep "awesome" ~/*.txt

# Search in all txt files, including sub-folder files
$ grep "awesome" ~/**/*.txt
```

## Expanded View

```sh
# Print two lines After line matching search string
$ grep -A 2 "awesome" file.txt

# Print two lines Before line matching search string
$ grep -B 2 "awesome" file.txt

# Print two lines before and two after the line matching search string
$ grep -B 2 -A 2 "awesome" file.txt
```

## Filter

```sh
# Reverse of searching a text
# Search lines that do NOT have the text
$ grep -v "awesome" file.txt
```

## Count

```sh
# Count number of occurrences
$ grep -c "awesome" file.txt

# This will only print out the count, and not the matching strings
```

## Formatting

```sh
# highlights the string occurrence in the file
$ grep --color "awesome" file.txt
```
