#!/user/bin/env bash

# Write a program to evenly divide pizzas. Prompt for the number of people, the number of pizzas, and the number of slices per pizza. 
# Ensure that the number of pieces comes out even.

echo -e "\n [$] pizza party \n"

read -p " How many people ? " PEOPLE;

read -p " How many pizzas do you have ? " PIZZAS;

read -p " How many slices does each pizza have ? " SLICES;

echo  "
    $PEOPLE people with $PIZZAS pizzas 
    each person get $(( PEOPLE / PIZZAS )) pieces of pizza.
    there are $(( PEOPLE %  PIZZAS )) leftover pieces
";
