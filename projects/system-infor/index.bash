#!/usr/bin/env bash

# create system information script that displays the following information about the system:
# ===== SYSTEM DASHBOARD =====

# 1. System Information
# 2. Memory Information
# 3. Disk Information
# 4. Running Processes
# 5. Exit

show_system_info(){
    local hostname=$(hostname)
    local current_user=$(whoami)
    local os=$(uname -o)
    local kernel_version=$(uname -r)
    local cpu_cores=$(nproc)
    local cpu_model=$(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)
    local cpu_architecture=$(uname -m)
    local uptime=$(uptime -p)
    echo " ===== SYSTEM INFORMATION ====="
    echo "Hostname: $hostname"
    echo "Current User: $current_user"
    echo "Operating System: $os"
    echo "Kernel Version: $kernel_version"
    echo
    echo " ===== CPU INFORMATION ===== "
    echo "Cpu cores: $cpu_cores"
    echo "Cpu model: $cpu_model"
    echo "Cpu architecture: $cpu_architecture"
    echo
    echo " ===== UPTIME INFORMATION ===== "
    echo "Uptime: $uptime"
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

# disk information
show_disk_info(){
    local total_disk=$(df -h --total | awk '/^total/ {print $2}')
    local used_disk=$(df -h --total | awk '/^total/ {print $3}')
    local free_disk=$(df -h --total | awk '/^total/ {print $4}')

    # read total used free <<< $(df -h -- total | awk '/^total/ {print $2, $3, $4}')

    echo " ===== DISK INFORMATION ===== "
    echo "Total Disk Space: $total_disk"
    echo "Used Disk Space: $used_disk"
    echo "Free Disk Space: $free_disk"
}

# running processes
show_running_processes(){
    local processes=$(ps aux | head -n 10)
    echo " =====  RUNNING PROCESSES ===== "
    echo "$processes"
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
        3)
            show_disk_info
            ;;
        4)
            show_running_processes
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "invalid choice "
            ;;
    esac
done