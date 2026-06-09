#!/bin/bash
# Create a program that prompts for a quote and an author. 
# Display the quotation and author as shown in the example output.



read -p "what is the qoutes? " QOUTE;

read  -p  "who said it? " AUTHOR;

echo -e "$AUTHOR"" says, ""\"$QOUTE\"";
