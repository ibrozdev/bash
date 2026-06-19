#!/usr/bin/env bash

BACKUP_DIR="backups";

mkdir -p "$BACKUP_DIR";

backup_folder(){
    local folder_path;
    local timestamp;
    local ZIP_FILE;

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

    # DESTINATION="$BACKUP_DIR/backup_$timestamp";
    ZIP_FILE="$BACKUP_DIR/backup_$timestamp.zip";

    zip -r "$ZIP_FILE" "$folder_path" >/dev/null

    # cp -r "$folder_path" "$DESTINATION";

    # echo
    # echo "Backup created successfully "
    # echo "Backup location: $DESTINATION"
    echo
    echo "Backup compressed successfully!"
    echo "Backup file:"
    echo "$ZIP_FILE"
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

# after zipping the folder and  listing the backups,  this is the option menu for the user to choose  unzipping the backup folder zip  to unzip

unzip_backup(){
    local backup_file;
    read -p "Enter the backup file name to unzip (with .zip extension): " backup_file;

    if [[ -z "$backup_file" ]]; then
        echo "Backup file name cannot be empty!"
        return
    fi

    local full_path="$BACKUP_DIR/$backup_file";

    if [[ ! -f "$full_path" ]]; then
        echo "Backup file does not exist!"
        return
    fi

    unzip "$full_path" -d "$BACKUP_DIR/unzipped_$backup_file" >/dev/null

    echo
    echo "Backup unzipped successfully!"
    echo "Unzipped location: $BACKUP_DIR/unzipped_$backup_file"
}

while true
do
    echo
    echo " ===== file backup tool ===== "
    echo "1, Backup folder "
    echo "2, View backups "
    echo "3, Unzip backup "
    echo "4, Exit "


    read -p " choose option: " choice;

    case $choice in
        1)
            backup_folder
            ;;
        2)
            list_backups
            ;;
        3)
            unzip_backup
            ;;
        4)
            echo "Goodby!"
            break
            ;;
        *)
            echo "invalid choice "
            ;;
    esac
done        