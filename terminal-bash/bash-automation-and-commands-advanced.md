# Bash Automation & Commands

#### Advanced actions

##### Working with JSON

Bash doesn't ship with supporting JSON out of the box. If you do not have a command line utility \(jq\), install it

```
$ brew install jq
```

###### Examples

```
Read and use JSON in bash
$ echo '{"a": {"b":123 } }' | jq '.a.b'    # returns 123 as output

Read API response
$ curl https://swapi.co/api/people/2 | jq    # Pretty print JSON

Pass a JSON file to jq for filtering content
$ jq '.dependencies | keys' package.json
```



