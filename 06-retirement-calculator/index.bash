#!/bin/bash

#Create a program that determines how many years you have left until retirement and the year you can retire.

read -p "What is your currrent age ? " CURRENT_AGE;

read -p "At what age would you like to retire ? " OLD_AGE;

DIFF=$((OLD_AGE - CURRENT_AGE));

CURRENT_YEAR=$(date +%Y);

RETIREMENT_YEAR=$((CURRENT_YEAR + DIFF));

echo "
   you have $DIFF years left untile you retire.
   it's $CURRENT_YEAR, so so you can retire in $RETIREMENT_YEAR.
 "
