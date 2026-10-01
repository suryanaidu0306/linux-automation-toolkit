#!/bin/bash

system_info() {
    echo "===== SYSTEM INFORMATION ====="
    date
    whoami
    hostname
}

disk_usage() {
    echo "===== DISK USAGE ====="
    df -h
}

memory_usage() {
    echo "===== MEMORY USAGE ====="
    free -h
}

network_info() {
    echo "===== NETWORK INFORMATION ====="
    hostname -I
}

echo "==============================="
echo " Linux Automation Toolkit"
echo "==============================="

echo "1. System Information"
echo "2. Disk Usage"
echo "3. Memory Usage"
echo "4. Network Information"
echo "5. Exit"

read -p "Choose an option (1-5): " choice

case $choice in
1)
    system_info
    ;;
2)
    disk_usage
    ;;
3)
    memory_usage
    ;;
4)
    network_info
    ;;
5)
    echo "Goodbye!"
    ;;
*)
    echo "Invalid Option!"
    ;;
esac
