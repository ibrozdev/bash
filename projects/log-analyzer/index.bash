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

count_lines(){
    wc -l < "$log_file"
}

# read the entire  error lines from the log file and count them
count_errors(){
    echo "Total error lines: $(grep -c "ERROR" "$log_file")";
}

count_warnings(){
    echo "Total warning lines: $(grep -c "WARNING" "$log_file")";
}


while true;
do
    echo " ===== Log Analyzer Menu ===== "
    echo "1. View Log "
    echo "2. count lines "
    echo "3. count errors "
    echo "4. count warnings "
    echo "5. Exit "

    read -p "Enter your choice: " choice;

    case $choice in 
        1)
            view_log
            ;;
        2)
            count_lines
            ;;
        3)
            count_errors
            ;;
        4)
            count_warnings
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please try again. "
            ;;
    esac
done