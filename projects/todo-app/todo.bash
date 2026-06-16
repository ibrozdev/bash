#!/usr/bin/env bash

FILE="tasks.txt"

touch "$FILE"

add_task(){
    read -p "Enter task: " task;
    echo "$task" >> "$FILE";
    echo "task added.";
}

echo "Learn Bash" >> tasks.txt
echo "Learn linux" >> tasks.txt