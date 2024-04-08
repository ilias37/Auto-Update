#!/bin/bash

PASSWORD="your_password"

run() {
   echo -e "\033[1;33mExecuting \033[1;37m\"\033[1;33msudo $1\033[1;37m\"\033[0m"
   echo "$PASSWORD" | sudo -S $1
}

lines() {
    for i in {1..3}; do
        echo
    done
}

run "apt update"
lines

run "apt upgrade -y"
lines

run "apt clean"
lines

run "apt autoclean"
lines

run "apt autoremove -y"
lines
