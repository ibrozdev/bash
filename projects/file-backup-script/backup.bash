#!/usr/bin/env bash

BACKUP_DIR="backups";

mkdir -p "$BACKUP_DIR";

backup_folder(){
    read -p "Enter folder path of the folder you want to backup: " folder_path;
    if [[ -z "$folder_path" ]]; then
        echo "folder path or name cannot be empty!"
        return
    fi

    if [[ ! -d "$folder_path" ]]; then
        echo "folder path does not exist!"
        return
    fi

    timestamp=$(date +"%Y%m%d_%H%M%S");

    DESTINATION="$BACKUP_DIR/backup_$timestamp";

    cp -r "$folder_path" "$DESTINATION";

    echo
    echo "Backup created successfully "
    echo "Backup location: $DESTINATION"
}

list_backups(){
    echo
    echo " ===== Available backups ===== "
    if [[ ! -d "$BACKUP_DIR" ]]; then
        echo "No backup found. "
        return
    fi

    ls -l "$BACKUP_DIR";
}

while true
do
    echo
    echo " ===== file backup tool ===== "
    echo "1, Backup folder "
    echo "2, View backups "
    echo "3, Exit "

    read -p " choose option: " choice;

    case $choice in
        1)
            backup_folder
            ;;
        2)
            list_backups
            ;;
        3)
            echo "Goodby!"
            break
            ;;
        *)
            echo "invalid choice "
            ;;
    esac
done        