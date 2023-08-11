#!/bin/bash
string="Hello, my email is user@example.com"
pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}"
[[ $string =~ $pattern ]] && echo "Email found: ${BASH_REMATCH[0]}"
