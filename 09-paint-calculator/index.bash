#!/user/bin/env bash

# Calculate gallons of paint needed to paint the ceiling of a room. Prompt for the length and width, 
# and assume one gallon covers 350 square feet. Display the number of gallons needed to paint the ceiling as a whole number.


echo -e "\n [$] paint calculator \n"

read -p "What is the length of  the room ? " LENGTH;
read -p "What is the width of the room ? " WIDTH;

AREA=$((LENGTH * WIDTH));
PAINT_IN_GALLONS=$(( AREA / 350 ));
EXCESS_AREA=$(( AREA % 350 ));

if [ $EXCESS_AREA -ge 0 ];
then
    (( ++$PAINT_IN_GALLONS ));
fi

echo "
    you will need to purchase $PAINT_IN_GALLONS gallons 
    of paint to cover area of $AREA sqare feet
"



