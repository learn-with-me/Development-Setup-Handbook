# Terminal (Mac)

[brew](./../homebrew/README.md) package manager

1. [Shells](./shells/README.md)
5. [bash script](./bash-script.md)
6. Tips - [Handling Files & Directories](./tips/handling-files-directories.md)
9. Tips - [Keyboard Shortcuts](./tips/keyboard-shortcuts.md)
10. [Kill a process](./kill-process.md)
11. Using [alias](./using-alias.md)
12. Using [curl](./using-curl.md)
13. Using [find](./using-find.md)
14. Using [grep](./using-grep.md)
15. [Cheatsheet](./cheatsheet.md)
16. [Linux Commands](https://xmind.app/m/WwtB/) by Alex Xu

## Plugins

### Auto Completion

```sh
# Bash version
$ bash --version

# Auto Completion
## If running Bash 3.2 included with macOS
$ brew install bash-completion
## or, if running Bash 4.1+
$ brew install bash-completion@2
```

### Working with JSON

Bash doesn't ship with supporting JSON out of the box. If you do not have a command line utility \(jq\), install it

```
$ brew install jq
```

#### Examples

```sh
# Read and use JSON in bash
$ echo '{"a": {"b":123 } }' | jq '.a.b'    # returns 123 as output

# Read API response
$ curl https://swapi.co/api/people/2 | jq    # Pretty print JSON

# Pass a JSON file to jq for filtering content
$ jq '.dependencies | keys' package.json
```
