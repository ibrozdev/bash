#!/user/bin/env bash

read -p "What is you score  pass your score (0-100):" SCORE 

if [[ $SCORE -ge 90 && $SCORE -le 100 ]]
then
    echo "Grade : A+ "
elif [[ $SCORE -ge 80 && $SCORE -lt 90 ]]; then
    echo "Grade : A  "
elif [[ $SCORE -ge 75 && $SCORE -lt 80 ]]; then
    echo "Grade : A- "
elif [[ $SCORE -ge 70 && $SCORE -lt 75 ]]; then
    echo "Grade : B+ "
elif [[ $SCORE -ge 65 && $SCORE -lt 70 ]]; then 
    echo "Grade : B  "
elif [[ $SCORE -ge 60 && $SCORE -lt 65 ]]; then
    echo "Grade : B- "
elif [[ $SCORE -ge 55 && $SCORE -lt 60 ]]; then
    echo "Grade : C+ "
elif [[ $SCORE -ge 50 && $SCORE -lt 55 ]]; then
    echo "Grade : C  "
else
    echo "Grade : F  "
fi
