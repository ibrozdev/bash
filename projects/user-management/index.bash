#!/usr/bin/env bash 

# create a user management script that allows the user to perform the following actions:
# ===== USER MANAGEMENT DASHBOARD =====
# 1. Create a new user
# 2. Delete a user
# 3. List all users
# 4. Check if a user exists
# 5. Exit

# create a new user
create_user(){
    read -p "Enter the username to create: " username
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists."
        else
        sudo useradd "$username"
        echo "User '$username' created successfully."
    fi
}

delete_user(){
    read -p "Enter the username to delete: " username
    
    if [[ "$username" == "$(whoami)" ]]; then
        echo "You cannot delete the currently logged-in user."
        return
    fi

    if id "$username" &>/dev/null; then
        sudo userdel "$username"
        echo "User '$username' deleted successfully."
    else
        echo "User '$username' does not exist."
    fi
}










while true
do 
    echo
    echo " ===== USER MANAGEMENT DASHBOARD ===== "
    echo "1. create a new user "
    echo "2. delete a user "
    echo "3. list all users "
    echo "4. check if a user exists "
    echo "5. exit "

    read -p "choose an option: " choice;


    case $choice in 
        1)
            create_user
            ;;

        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice! "
            ;;
    esac
done

    