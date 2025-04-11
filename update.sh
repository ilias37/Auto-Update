#!/bin/bash

sudo -k

for cmd in \
    "apt update" \
    "apt full-upgrade -y" \
    "apt clean" \
    "apt autoclean" \
    "apt autoremove -y"; do
    echo -e "\033[1;33mExecuting \033[1;37m\"\033[1;33msudo $cmd\033[1;37m\"\033[0m"
    sudo $cmd
    echo -e "\n\n"
done