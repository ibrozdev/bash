#!/usr/bin/env bash
# Log Analyzer Script

# 1. Ensure a log file path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <log_file_path>"
    exit 1
fi

log_file="$1"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S");
report_file="log_report_$timestamp.txt"

if [ ! -f "$log_file" ] || [ ! -r "$log_file" ]; then
    echo "Error: log file '$log_file' does not exist or is not readable. (permission denied)"
    exit 1
fi



view_log() {

    cat  "$log_file"

}

while true;
do
    echo " ===== Log Analyzer Menu ===== "
    echo "1. View Log "
    echo "2. Exit "

    read -p "Enter your choice: " choice;

    case $choice in 
        1)
            view_log
            ;;
        2)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please try again. "
            ;;
    esac
done