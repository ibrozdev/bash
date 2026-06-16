#!/usr/bin/env bash

calculate_grade(){
    local score=$1;

    if [[ $score -ge 90 ]];then
        echo "Grade A+ "
    elif [[ $score -ge 80 ]];then
        echo "Grade A "
    elif [[ $score -ge 75 ]];then
        echo "Grade A- "
    elif [[ $score -ge 70 ]];then
        echo "Grade B+ "
    elif [[ $score -ge 65 ]];then
        echo "Grade B "
    elif [[ $score -ge 60 ]];then
        echo "Grade B- "
    elif [[ $score -ge 55 ]];then
        echo "Grade C+ "
    elif [[ $score -ge 50 ]];then
        echo "Grade C "
    else
        echo "Grade F"
    fi
}

read -p "Enter your score (0-100): " SCORE;

# Check if input is a number
if [[ !$SCORE =~ ^[0-9]+$ ]];then
    echo "Error: please enter a valid number ";
    exit 1
fi

# Check range 

if [[ $SCORE -lt 0 || $SCORE -gt 100 ]];then
    echo "Error: Score must be between 0 and 100."
    exit 1
fi

calculate_grade "$SCORE"
