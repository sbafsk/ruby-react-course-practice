# frozen_string_literal: true
# - mkdir [(path/)name] - creates a directory with the name you give it.
# - rmdir [(path/)name] - removes target directory (if empty)
# - mv [current (path/)name] [new (paht/)name]
# we can thing of mv as renaming a file/directory, or as moving it,
# since in the directory structure, we use names to represent locations.
#
# - rm - removes a file, with -R removes a directory and all its content.
# - cp - copies a file to a new location: with -R copies folder
# and all its contets.
# - touch - creates a new (text) file, but only if there is not already
# a file with the same name in the target directory.
#
# - `echo[text]`: prints the text to standard output
# - We can use `>` or `>>` to redirect the standard output of a command
# to a text file. > replces the file, >> appends to the end.
# - `cat` prints out the contenst of a file onto the standard output,
# but we can use `less` to read a longer text file without printing it
# or even loading the whole thing. Great for taking a peek
# at the beginning of a text file.
#
# - The absolute path of the file means either the path starting from
# the root folder `/` or from the home folder `~`.
# - The relative path starts from the current working directory
# (the output of `pwd`) which can be represented by a dot
# `cd ./some_directory` or just implied `cd some_directory`
#
# - `ls -s source_file [target_location]` - creates a link to source_file at
# target_location. the `-s` flag tells the `ln` tool to create a symbolic link
# (don't worry too much about what that means)
# - `tree[directory]` - similar to `ls -R`, but it outputs in a much more
# visually appealing format. needs to be installed by running:
# `brew install tree`.
# - `man [command-name]` - to read the manual or `man page` for a command.
# Once you get used to the wat man pages are written, you'll be able to
# teach yourself how to use new Terminal commands, and be totally unstoppable.
#
# - `irb` IS GREAT.
