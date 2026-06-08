#!/bin/bash

read -p "what is your input string?" STR;
# The -p flag stands for prompt.

STR_LENGTH=${#STR};
# The ${#STR} syntax is a native Bash feature called parameter expansion that counts the length of a string.
# The # symbol inside the curly braces acts as a length operator.It counts every single character in the
# $STR variable, including spaces, numbers, punctuation, and hidden characters.

echo "$STR has $STR_LENGTH characters.";
