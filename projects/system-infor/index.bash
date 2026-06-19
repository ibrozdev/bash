#!/usr/bin/env bash
# create system information script that displays the following information about the system:
# ===== SYSTEM DASHBOARD =====

# 1. System Information
# 2. Memory Information
# 3. Disk Information
# 4. Running Processes
# 5. Exit

show_system_info(){
    echo " ===== SYSTEM INFORMATION ====="
    echo "Hostname: $(hostname)"
    echo "Operating System: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo
    echo " ===== CPU INFORMATION ===== "
    echo "Cpu cores: $(nproc)"
    echo "Cpu model: $(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)"
}

# memory information 
show_memory_info(){
    local total_memory=$(free -h | awk '/^Mem:/ {print $2}')
    local used_memory=$(free -h | awk '/^Mem:/ {print $3}')
    local free_memory=$(free -h | awk '/^Mem:/ {print $4}')

    echo " ===== MEMORY INFORMATION ===== "
    echo "Total Memory: $total_memory";
    echo "Used Memory: $used_memory";
    echo "Free Memory: $free_memory";
}



while true
do
    echo
    echo " ===== SYSTEM DASHBOARD ===== "
    echo "1. System Information "
    echo "2. Memory Information "
    echo "3. Disk Information "
    echo "4. Running processes "
    echo "5. Exit "

    read -p " choose option: " choice;

    case $choice in
        1)
            show_system_info
            ;;
        2)
            show_memory_info
            ;;
        *)
            echo "invalid choice "
            ;;
    esac
done