#!/usr/bin/bash
WHITE='\033[1;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

if [ -z $1 ] 
then
    echo -e "${WHITE}Select an action:${NC}
    \t(${RED}1${NC})\tStart the dockers with a Joomla CMS (mysql, pma, joomla)
    \t(${RED}2${NC})\tStop the dokers with a Joomla CMS (mysql, pma, joomla)
    \t(${RED}q${NC})\tExit from script"
    echo -en "${WHITE}Enter you choise:${NC} "
    read choise
else
    choise=$1
fi

case $choise in
    1)  #docker-compose -f joomla-docker-compose.yml up -d
        echo 1
    ;;
    2)  #docker-compose -f joomla-docker-compose.yml stop
        echo 2
    ;;
    q)  #exit 0
        echo q
    ;;
    *)  #exit 1
        echo "Something else"
    ;;
esac

