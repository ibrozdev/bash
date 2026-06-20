	#!/users/bin/env bash


add() {
    echo "Result: $(( NUM1 + NUM2 ))";
};

subtract(){
    echo "Result: $((NUM1 + NUM2 ))";
}

multiply(){
    echo "Result: $((NUM1 + NUM2 ))";
}

divide() {
    if [ "$NUM2" -eq 0 ];
    then
       echo "Error cannot divide by 0"
    else
       echo "Result: $((NUM1 / NUM2 ))";
    fi
};

while true 
do
    echo
    echo "===== calculator ====="
    echo "1. Addition ";
    echo "2. Subtraction ";
    echo "3. Multiplication ";
    echo "4. Division ";
    echo "5. Exit ";
    read -p "choose an option: " choice;

    if [ "$choice" -eq 5 ]; 
    then
        echo "Goodbye!"
        break
    fi

    read -p "Enter first number: " NUM1
    read -p "Enter second number: " NUM2
    
    case $choice in
    1)
        add
        ;;
    2)
        subtract
        ;;
    3)
        multiply
        ;;
    4)
        divide
        ;;
    *)
        echo "Invalid choice! ";
        ;;
  esac
done





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
