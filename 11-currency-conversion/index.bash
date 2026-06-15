#!/users/bin/env bash

#Write a program that converts currency. Specifically, convert euros to U.S. dollars. 
#Prompt for the amount of money in euros you have, and prompt for the current exchange rate of the euro. Print out the new amount in U.S. dollars.


echo -e " [$} carrencey converter "

echo -e "\n[-] 1 EURO = 1.16 DOLLARS\n\n";

read -p "How many ueros are you exchanging? " EUROS;
read -p "What is the current exchange rate of the euro ? " RATE;

DOLLARS=$(awk -v e="$EUROS" -v r="$RATE" 'BEGIN {printf "%.2f",e * r'})


echo -e "\n$EUROS euros is equivalent to $DOLLARS dollars. \n\n";
