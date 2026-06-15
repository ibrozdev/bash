#!/users/bin/env bash

# Create a program that computes simple interest. Prompt for the principal amount, the rate as a percentage, and the time, 
# and display the amount accrued (principal + interest). The formula for simple interest is A = P(1 + rt), 
# where P is the principal amount, r is the annual rate of interest, t is the number of years the amount is invested, and A is the amount at the end of the investment.

echo -e "\n[$] simple interest calculator \n\n"

read -p "Enter the  principal: " P;
read -p "Enter the rate of interest: " R;
read -p "Enter the number of years: " T;

A=$(awk -v p="$P" -v r="$R" -v t="$T" 'BEGIN {printf "%.2f", p *( 1 + (r * t / 100))}');

echo -e "\nafter $T years at $R%% ,the investment will be worth \$$A\n\n"

