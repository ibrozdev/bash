#!/user/bin/env bash

# create a program that calculate the area of a room
# Basic formula for conversion: 1ft = 0.3048m

read -p "What is the lenght of a room in feet ?" LENGTH;
read -p "what is the width of a  room in feet ? " WIDTH;


AREA_IN_FEET=$(awk "BEGIN {printf \"%.2f\", $LENGTH * $WIDTH}")

LENGTH_IN_M=$(awk "BEGIN {printf \"%.4f\", $LENGTH * 0.3048}")
WIDTH_IN_M=$(awk "BEGIN {printf \"%.4f\", $WIDTH * 0.3048}")

AREA_IN_SQUAREMETERS=$(awk "BEGIN {printf \"%.2f\", $LENGTH_IN_M * $WIDTH_IN_M}")



echo "
    You entered dimensions of $LENGTH feet by  $WIDTH feet.
    The area is 
    $AREA_IN_FEET square feet
    $AREA_IN_SQUAREMETERS square meters

";
