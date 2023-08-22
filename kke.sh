#!/bin/sh

dnf install ansible -y
ansible-playbook -i inventory thor.yml