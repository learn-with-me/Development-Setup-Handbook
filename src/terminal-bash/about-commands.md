# About Commands

## File System Commands

### cat

[cat](https://en.wikipedia.org/wiki/Cat_(Unix)) is a standard Unix utility that reads files sequentially, writing them to standard output. The name is derived from its function to `(con)catenate` files

### chattr

[chattr](https://en.wikipedia.org/wiki/Chattr) allows a user to set certain attributes of a file. `lsattr` is the command that displays the attributes of a file.

### chmod

[chmod](https://en.wikipedia.org/wiki/Chmod) - `change mode` is the command and system call used to change the access permissions and the special mode flags (the setuid, setgid, and sticky flags) of file system objects (files and directories).

### chown

[chown](https://en.wikipedia.org/wiki/Chown) - `change owner` is used to change the owner of file system files, directories. Unprivileged (regular) users who wish to change the group membership of a file that they own may use [chgrp](https://en.wikipedia.org/wiki/Chgrp).

### cksum

[cksum](https://en.wikipedia.org/wiki/Cksum) generates a `checksum` value for a file or stream of data. The cksum command reads each file given in its arguments, or standard input if no arguments are provided, and outputs the file's 32-bit `cyclic redundancy check` (CRC) checksum and byte count. The CRC output by cksum is different from the CRC-32 used in zip, PNG and zlib.

### dd

[dd](https://en.wikipedia.org/wiki/Dd_(Unix)) command, the primary purpose of which is to convert and copy files.

### du

[du](https://en.wikipedia.org/wiki/Du_(Unix)), `disk usage` is used to estimate file space usage — space used under a particular directory or files on a file system.

### df

[df](https://en.wikipedia.org/wiki/Df_(Unix)), `disk free` is used to display the amount of available disk space for file systems on which the invoking user has appropriate read access. df is typically implemented using the `statfs` or `statvfs` system calls.

### file

[file](https://en.wikipedia.org/wiki/File_(command)) is for recognizing the type of data contained in a computer file. It can even tell you the uncompressed byte size of a gzipped file.

### fuser

[fuser](https://en.wikipedia.org/wiki/Fuser_(Unix)) is used to show which processes are using a specified computer file, file system, or Unix socket. The command displays the process identifiers (PIDs) of processes using the specified files or file systems. In the default display mode, each PID is followed by a letter denoting the type of access.

### ln

[ln](https://en.wikipedia.org/wiki/Ln_(Unix)) is used to create a [hard link]((https://en.wikipedia.org/wiki/Hard_link)) or a [symbolic link](https://en.wikipedia.org/wiki/Symbolic_link) (`symlink`) to an existing file or directory. The use of a hard link allows multiple filenames to be associated with the same file since a hard link points to the [inode](https://en.wikipedia.org/wiki/Inode) of a given file, the data of which is stored on disk. On the other hand, symbolic links are special files that refer to other files by name.

### ls

[ls](https://en.wikipedia.org/wiki/Ls) is used to list computer files and directories in Unix and Unix-like operating systems.

### pax

[pax](https://en.wikipedia.org/wiki/Pax_(command)) is an [archiving utility](https://en.wikipedia.org/wiki/File_archiver) available for various operating systems. Rather than sort out the incompatible options that have crept up between [tar](https://en.wikipedia.org/wiki/Tar_(computing)) and [cpio](https://en.wikipedia.org/wiki/Cpio), along with their implementations across various versions of Unix, the IEEE designed new archive utility pax that could support various archive formats with useful options from both archivers. The new pax format which is basically tar with additional extended attributes.

### split

[split](https://en.wikipedia.org/wiki/Split_(Unix)) is most commonly used to split a computer file into two or more smaller files.

### touch

[touch](https://en.wikipedia.org/wiki/Touch_(command)) is used to update the access date and/or modification date of a computer file or directory.

### type

[type](https://en.wikipedia.org/wiki/Type_(Unix)) is a command that describes how its arguments would be interpreted if used as command names. Where applicable, type will display the command name's path. Possible command types are:

* shell built-in
* function
* alias
* hashed command
* keyword

## Process Commands

### at

[at](https://en.wikipedia.org/wiki/At_(command)) is used to schedule commands to be executed once, at a particular time in the future. It differs from [cron](https://en.wikipedia.org/wiki/Cron), which is used for recurring executions.

### bg

[bg](https://en.wikipedia.org/wiki/Job_control_(Unix)#Commands) - The POSIX standard specifies two commands for resuming suspended jobs in the background and foreground, respectively `bg` and `fg`.

### cron

[cron](https://en.wikipedia.org/wiki/Cron) is a job scheduler used to run job(s) periodically at fixed times, dates, or intervals. It typically automates system maintenance or administration.

### kill

[kill](https://en.wikipedia.org/wiki/Kill_(command)) is used to send [signals](https://en.wikipedia.org/wiki/Signal_(IPC)) to running [processes](https://en.wikipedia.org/wiki/Process_(computing)). By default, the message sent is the termination signal, which requests that the process exit. Sometimes the signal sent may have nothing to do with process killing.

### lsof

[lsof](https://en.wikipedia.org/wiki/Lsof) is a command meaning "`list open files`", which is used in many Unix-like systems to report a list of all open files and the processes that opened them.

### ps

The [ps](https://en.wikipedia.org/wiki/Ps_(Unix)) program (short for "`process status`") displays the currently-running processes. A related Unix utility named `top` provides a real-time view of the running processes.

### time

[time](https://en.wikipedia.org/wiki/Time_(Unix)) is used to determine the duration of execution of a particular command.

### top

[top](https://en.wikipedia.org/wiki/Top_(software)) (`table of processes`) is a task manager program, found in many Unix-like operating systems, that displays information about CPU and memory utilization.

## Search Commands

### find

[find](https://en.wikipedia.org/wiki/Find_(Unix)) is a command-line utility that locates files based on some user-specified criteria and either prints the pathname of each matched object or, if another action is requested, performs that action on each matched object.

### grep

[grep](https://en.wikipedia.org/wiki/Grep) is a command-line utility for searching plain-text data sets for lines that match a regular expression.

## Shell builtin Commands

### alias

[alias](https://en.wikipedia.org/wiki/Alias_(command)) enables a replacement of a word by another string. It is mainly used for abbreviating a system command, or for adding default arguments to a regularly used command.

### test

[test](https://en.wikipedia.org/wiki/Test_(Unix)) evaluates conditional expressions.

### wait

[wait](https://en.wikipedia.org/wiki/Wait_(command)) pauses until execution of a background process has ended.

## Software Development Commands

### ctags

[ctags](https://en.wikipedia.org/wiki/Ctags) is a programming tool that generates an index (or tag) file of names found in source and header files of various programming languages to aid code comprehension.

### make

[make](https://en.wikipedia.org/wiki/Make_(software)) is a build automation tool that automatically builds executable programs and libraries from source code by reading files called Makefiles which specify how to derive the target program. Make can be used to manage any project where some files need to be updated automatically from others whenever the others change in addition to building programs.

### strip

[strip](https://en.wikipedia.org/wiki/Strip_(Unix)) program removes information from executable binary programs and object files that is not essential or required for normal and correct execution, thus potentially resulting in better performance and sometimes significantly less disk space usage. The resulting file is a stripped binary.

## Text Processing Commands

### awk

[awk](https://en.wikipedia.org/wiki/AWK) is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool. Like [sed](https://en.wikipedia.org/wiki/Sed) and [grep](https://en.wikipedia.org/wiki/Grep), it is a [filter](https://en.wikipedia.org/wiki/Filter_(software)).

### csplit

[csplit](https://en.wikipedia.org/wiki/Csplit) is a utility that is used to split a file into two or more smaller files determined by context lines. The patterns may be line numbers or regular expressions.

The split command also splits a file into pieces, except that all the pieces are of a fixed size (measured in lines or bytes).

### cut

[cut](https://en.wikipedia.org/wiki/Cut_(Unix)) is used to extract sections from each line of input — usually from a file.

### diff

[diff](https://en.wikipedia.org/wiki/Diff) is a data comparison tool that computes and displays the differences between the contents of files. Unlike [edit distance](https://en.wikipedia.org/wiki/Edit_distance) notions used for other purposes, diff is line-oriented rather than character-oriented, but it is like [Levenshtein distance](https://en.wikipedia.org/wiki/Levenshtein_distance) in that it tries to determine the smallest set of deletions and insertions to create one file from the other. The utility displays the changes in one of several standard formats, such that both humans or computers can parse the changes, and use them for [patching](https://en.wikipedia.org/wiki/Patch_(Unix)).

The operation of diff is based on solving the [longest common subsequence problem](https://en.wikipedia.org/wiki/Longest_common_subsequence_problem).

### fold

[fold](https://en.wikipedia.org/wiki/Fold_(Unix)) is used for making a file with long lines more readable on a limited width computer terminal by performing a line wrap.

### head

[head](https://en.wikipedia.org/wiki/Head_(Unix)) is used to display the beginning of a text file or piped data.

### iconv

[iconv](https://en.wikipedia.org/wiki/Iconv), `internationalization conversion` is used to convert between different character encodings. It can convert from any of the encodings to any other, through `Unicode conversion`. 

### more

[more](https://en.wikipedia.org/wiki/More_(command)) is a command to view (but not modify) the contents of a text file one screen at a time. Programs of this sort are called pagers. more is a very basic pager, originally allowing only forward navigation through a file, though newer implementations do allow for limited backward movement.

### nl

[nl](https://en.wikipedia.org/wiki/Nl_(Unix)) is a Unix utility for `numbering lines`, either from a file or from standard input, reproducing output on standard output.

### sed

[sed](https://en.wikipedia.org/wiki/Sed), `stream editor` is a Unix utility that parses and transforms text, using a simple, compact programming language.

### sort

[sort](https://en.wikipedia.org/wiki/Sort_(Unix)) prints the lines of its input or concatenation of all files listed in its argument list in sorted order. Sorting is done based on one or more sort keys extracted from each line of input. By default, the entire input is taken as sort key. Blank space is the default field separator. The command supports a number of command-line options that can vary by implementation.

### strings

[strings](https://en.wikipedia.org/wiki/Strings_(Unix)) finds and prints text strings embedded in binary files such as executables. It can be used on object files and [core dumps](https://en.wikipedia.org/wiki/Core_dump).

### tail

[tail](https://en.wikipedia.org/wiki/Tail_(Unix)) is used to display the tail end of a text file or piped data.

### uniq

[uniq](https://en.wikipedia.org/wiki/Uniq) is a utility command, when fed a text file or standard input, outputs the text with adjacent identical lines collapsed to one, unique line of text. The command is a kind of filter program. Typically it is used after sort. It can also output only the duplicate lines (with the `-d` option), or add the number of occurrences of each line (with the `-c` option).

### wc

[wc](https://en.wikipedia.org/wiki/Wc_(Unix)), `word count` generates one or more of the following statistics: newline count, word count, and byte count. If a list of files is provided, both individual file and total statistics follow.

### xargs

[xargs](https://en.wikipedia.org/wiki/Xargs), `extended arguments` command is used to build and execute commands from standard input. It converts input from standard input into arguments to a command.

## User Environment Commands

### env

[env](https://en.wikipedia.org/wiki/Env) is used to either print a list of environment variables or run another utility in an altered environment without having to modify the currently existing environment. Using env, variables may be added or removed, and existing variables may be changed by assigning new values to them.

### exit

[exit](https://en.wikipedia.org/wiki/Exit_(command)) causes the shell or program to terminate. If performed within an interactive command shell, the user is logged out of their current session, and/or user's current console or terminal connection is disconnected. Typically an optional exit code can be specified, which is typically a simple integer value that is then returned to the parent process.

### uname

[uname](https://en.wikipedia.org/wiki/Uname) prints the name, version and other details about the current machine and the operating system running on it.

### who

[who](https://en.wikipedia.org/wiki/Who_(Unix)) displays a list of users who are currently logged into the computer.
