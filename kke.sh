#!/bin/sh
# Function to display commands
exe() { echo "\$ $@" ; "$@" ; }

# Цвета и яркости текста
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
RESET='\033[0m'


cd ~/kke
echo
echo Initial thor password:
echo -e ">>>>> ${BOLD_GREEN}mjolnir123${RESET} <<<<<"
echo ">>>>> ^^^^^^^^^^ <<<<<"
echo
exe sudo dnf install ansible -y
ansible-playbook -check -i inventory thor.yml
cd
