#!/bin/bash
source ./includes/fonctionalite.sh
source ./includes/menu.sh
source ./includes/menu_graphique.sh

if [ $# -eq 1 ]; then
   while getopts "hvmg" var
   do
        case $var in
            h) help ;;
            v) version ;;
            m) menu ;;
            g) menu_graphique ;;
            *) showusage ;;
            esac
   done
else
    showusage;
fi