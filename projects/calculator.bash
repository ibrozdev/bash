	#!/users/bin/env bash

read -p "Enter first number ? " NUM1;
read -p "Enter second number ? " NUM2;

echo "choose operation: ";
echo "1. Addition ";
echo "2. Substraction ";
echo "3. Multiplication ";
echo "4. Division ";

read choice;

add() {
    echo "Result: $(( NUM1 + NUM2 ))";
};

substract() {
    echo "Result: $(( NUM1 - NUM2 )) ";
};
multiply() {
    echo "Result: $(( NUM1 * NUM2 )) ";
};

division() {
    echo "Result: $(( NUM1 / NUM2 ))";
};

if [ "$choice" -eq 1 ];
then
    add
elif [ "$choice" -eq 2 ];
then
    substract
elif [ "$choice" -eq 3 ];
then
    multiply
elif [ "$choice" -eq 4 ];
then
    division
else
    echo "invalid choice";
fi
