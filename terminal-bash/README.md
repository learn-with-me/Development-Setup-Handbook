# Terminal (Mac)

[brew](./../homebrew/README.md) package manager

1. iTerm2 [Customization](./customize-iterm2.md)
2. Hyper [Customization](./customize-hyper.md)
3. [Aliases](./aliases.md)
4. [bash profile](./bash-profile.md)
5. [bash script](./bash-script.md)
6. [curl](./curl.md)
7. Tips - [Find Files & Directories](./tips/find-files-directories.md)
8. Tips - [Handling Files & Directories](./tips/handling-files-directories.md)
9. Tips - [Keyboard Shortcuts](./tips/keyboard-shortcuts.md)
10. Tips - [Kill a process](./tips/kill-process.md)
11. Tips - [Search Text - grep](./tips/search-text-grep.md)
12. [Cheatsheet](./cheatsheet.md)

## Plugins

### Auto Completion

```
$ bash --version                      # Bash version

Auto Completion
$ brew install bash-completion        ## If running Bash 3.2 included with macOS
$ brew install bash-completion@2      ## or, if running Bash 4.1+
```

### Working with JSON

Bash doesn't ship with supporting JSON out of the box. If you do not have a command line utility \(jq\), install it

```
$ brew install jq
```

#### Examples

```
Read and use JSON in bash
$ echo '{"a": {"b":123 } }' | jq '.a.b'    # returns 123 as output

Read API response
$ curl https://swapi.co/api/people/2 | jq    # Pretty print JSON

Pass a JSON file to jq for filtering content
$ jq '.dependencies | keys' package.json
```
