#!/usr/bin/env zsh

: '
Define and invoke a function
'

greet() {
  echo "$1 world"
}

greet "hello"
