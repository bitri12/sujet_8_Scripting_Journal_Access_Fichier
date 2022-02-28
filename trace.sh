#!/bin/bash
source fonctionalite.sh
source menu.sh
source menu_graphique.sh

if [ $# -ge 1 ]; then
   while getopts "hvmg" var
   do
        case $var in
            h) help ;;
            v) version ;;
            m) menu ;;
            g) echo "en cours de preparation" ;;
            *) showusage ;;
            esac
   done
else
    showusage;
fi