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
            g) menu_graphique ;;
            *) showusage ;;
            esac
   done
else
    showusage;
fi