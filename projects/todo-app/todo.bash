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

# delete task
# how to run the script: bash todo.bash and then follow the instructions on the terminal
# to delete a task. You will be prompted to enter the task number you wish to delete.
# Make sure to enter a valid task number that corresponds to the tasks listed when you view tasks.
delete_task(){
    read -p "Enter task number to delete: " task_num;
    if ! [[ "$task_num" =~ ^[0-9]+$ ]]; then
        echo "Invalid input! Please enter a valid task number."
        return
    fi

    if ! [[ -s "$FILE" ]]; then
        echo "No tasks to delete!"
        return
    fi

    total_tasks=$(wc -l < "$FILE")
    if (( task_num < 1 || task_num > total_tasks )); then
        echo "Invalid task number! Please enter a number between 1 and $total_tasks."
        return
    fi

    sed -i "${task_num}d" "$FILE"
    echo "Task deleted successfully!"
}


# Main menu

while true
do 
    echo 
    echo "===== TODO APP ===== "
    echo "1. Add Tasks "
    echo "2. View Tasks "
    echo "3. delete Tasks "
    echo "4. Exit "
    
    read -p "Choose option: " choice

    case $choice in
    1)
        add_task
        ;;
    2)
        view_tasks
        ;;
    3)
        delete_task
        ;;
    4)
        echo "Goodbye!"
        break
        ;;
    *)
        echo "invalid choice"
        ;;
  esac
done

