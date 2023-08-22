#!/bin/sh
# Function to display commands
exe() { echo "\$ $@" ; "$@" ; }

cd ~/kke
echo Initial thor password: mjolnir123
exe sudo dnf install ansible -y
ansible-playbook -i inventory thor.yml
cd
