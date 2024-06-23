#!/bin/sh
# Function to display commands
exe() { echo "\$ $@" ; "$@" ; }

cd ~/kke
echo
echo Initial thor password:
echo ">>>>> mjolnir123 <<<<<"
echo ">>>>> ^^^^^^^^^^ <<<<<"
echo
mjolnir123 | sudo su
exe dnf install ansible -y
ansible-playbook -i inventory thor.yml
cd
