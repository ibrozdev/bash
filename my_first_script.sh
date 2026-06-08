#!/bin/bash
# The line above is the shebang, telling the system  to use the bash interpreter
echo "hello, world! i'm learning  bash"

echo "what is your naem ?"
# variables
x=23
y=54
z=$((x+y))
echo  " the  sum  of the  x and y is $z "

read name
if [ $name ]; then 
   echo "wow, $name sounds alright to me"
else
   echo "doesn'n sounds like anything to me "
fi
