#!/usr/bin/env bash

FILE="tasks.txt"

touch "$FILE"

add_task(){
    read -p "Enter task: " task;
    if [[ -z "$task" ]]; then
        echo "Task cannot bet empty!"
        return
    fi


    echo "$task" >> "$FILE";
    echo "task added successfully!";
}

# View all tasks
view_tasks(){
    echo
    echo " ===== TASKS ===== ";
    if [[ -s "$FILE" ]];then
        echo " No Tasks found!"
        return
    fi
    cat "$FILE";
}

# Main menu

while true
do 
    echo 
    echo "===== TODO APP ===== "
    echo "1. Add Tasks "
    echo "2. View Tasks "
    echo "3. Exit "
    
    read -p "Choose option: " choice

    case $choice in
    1)
        add_task
        ;;
    2)
        view_tasks
        ;;
    3)
        echo "Goodbye!"
        break
        ;;
    *)
        echo "invalid choice"
        ;;
  esac
done

