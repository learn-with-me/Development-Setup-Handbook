#!/usr/bin/env zsh

: '
Sample Init JS file script
'

echo "Initializing JS project at $(pwd)"
git init

# Create package json with all defaults
npm init -y

mkdir src

touch src/index.js

# opens the current directory with Visual Studio Code editor
code .
