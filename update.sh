#!/bin/bash

PASSWORD="your_password"

for cmd in "apt update" "apt upgrade -y" "apt clean" "apt autoclean" "apt autoremove -y"; do
    echo -e "\033[1;33mExecuting \033[1;37m\"\033[1;33msudo $cmd\033[1;37m\"\033[0m"
    echo "$PASSWORD" | sudo -S $cmd
    echo
    echo
    echo
done
