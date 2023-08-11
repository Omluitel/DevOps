#!/bin/bash
# This line specifies the interpreter that should be used to execute the script.
# In this case, it specifies that the Bash interpreter (/bin/bash) should be used.

echo "Script name: $0"
# This line uses the 'echo' command to print a message to the terminal.
# $0 is a special variable that holds the name of the script itself.
# So, this line will print the name of the script when it's executed.

echo "First argument: $1"
# This line prints a message to the terminal, similar to the previous line.
# $1 is a special variable that holds the first argument passed to the script.
# If you run the script with "./script.sh argument1", $1 will be replaced with "argument1".

echo "Second argument: $2"
# This line is similar to the previous one, but it's printing the second argument.
# $2 is a special variable that holds the second argument passed to the script.
# If you run the script with "./script.sh argument1 argument2", $2 will be replaced with "argument2".
