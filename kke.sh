#!/bin/sh
# Function to display commands
exe() { echo "\$ $@" ; "$@" ; }

cd ~/kke
echo
echo Initial thor password:
echo ">>>>> mjolnir123 <<<<<"
echo ">>>>> ^^^^^^^^^^ <<<<<"
echo
exe sudo dnf install ansible -y
ansible-playbook -i inventory thor.yml
cd
