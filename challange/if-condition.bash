#!/user/bin/env bash

# -eq  it means equal  to   like  10 = 10 
# -ne it means  not equal to  like 10 !=  9 something like that

MYNUMBER=300

if [  $MYNUMBER -ne 200 ]
then
    echo "the condition is true! "
else
    echo " this variable doesn't equal 200, but your vaiable has this value $MYNUMBER "
fi


