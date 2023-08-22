#!/bin/sh

echo Initial thor password: mjolnir123
sudo dnf install ansible -y
ansible-playbook -i inventory thor.yml