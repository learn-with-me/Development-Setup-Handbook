#!/usr/bin/env zsh

: '
Example with braces expansions
'

# The script will fail in the case where the caller does not pass in the directory path as input parameter.
# dir=$1

# Updated to default to current directory if nothing is passed in
dir=${1:-$PWD}
find "$dir" -type -f -maxdepth 1 | wc -l
