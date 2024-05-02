# pnpm (Performance npm)

The motivation behind this project is to address the shortcomings of `npm`.

Main issues when using npm:

1. `Disk space` - each project downloads its own copy of the dependent libraries, hence consuming a lot of disk space if you work on multiple projects
2. `Installation speed` - since each project downloads it's own dependencies, the time to get those dependencies increases as you add more of them.

How pnpm solves this problem?
Just like `git`, `pnpm` stores the delta between different versions of the same library, and in a central location. hence when a package is installed, its files are hard-linked (symlinks) from that single place, consuming no additional disk space.

## Installation

```sh
# Using brew
$ brew install pnpm

# Using npm
$ npm install -g pnpm
```

## Usage

Very similar to `npm` usage. Refer [this](https://pnpm.io/pnpm-cli)

## Resources

- Official [docs](https://pnpm.io/motivation)
