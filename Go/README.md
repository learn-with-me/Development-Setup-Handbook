# Go Lang

##### Installation

```
Option 1
Download and install the binary from https://golang.org/doc/install

Option 2
$ brew install go --cross-compile-common        // Find out more about this option
OR
$ brew install go

Setting up Path
$ export PATH="/usr/local/go/bin/:$PATH"
OR
If your workspace is anywhere other than $HOME/go, set GOPATH (specifies location of your workspace)
$ export GOPATH="$HOME/sites-personal/"
$ export PATH="$GOPATH/bin/:$PATH"

Set GOBIN path to generate a binary file when go install is run.
$ export GOBIN="$GOPATH/bin"

Extras
======
$ go get golang.org/x/tools/cmd/godoc
$ go get golang.org/x/tools/cmd/vet
$ go get github.com/golang/lint/golint
```

##### Working with code

```
To download a project from GitHub, run following command from anywhere
$ go get github.com/heroku/go-getting-started
$ cd $GOPATH/src/github.com/heroku/go-getting-started
# This command fetches the application locally, compile and install the generated executables in $GOPATH/bin.

Compile the code
$ go install .
```

##### Dependency Management

```
1. govendor
2. godep
3. GB

Installing tools
go get -u github.com/kardianos/govendor

Adding dependency
govendor fetch github.com/russross/blackfriday
    Records the Blackfriday dependency and any of it’s dependencies in vendor/vendor.json
    Makes a copy of github.com/russross/blackfriday in vendor/
```

##### Commands

```
go version                // Find the version
go help                   // Help
go help [command]         // Help on a command
godoc fmt Println         // Lookup a function in Go doc
go run <filename>.go      // Run a file
```
