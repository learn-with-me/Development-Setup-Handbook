#!/usr/bin/env zsh

: '
Clone a branch of local git repository to temp script
'

# mktemp creates a temporary file or folder
temp=$(mktemp -d)

git clone --branch $1 $PWD $temp
echo "branch $1 is cloned to $temp"

# run some tasks, tests, etc
