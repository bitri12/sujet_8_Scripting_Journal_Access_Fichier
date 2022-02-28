#!/bin/bash
source fonctionalite.sh
source menu.sh
source menu_graphique.sh

if [ $# -ge 1 ]; then
   if [ $1 == "-m" ]; then
        menu;
    elif [ $1 == "-h" ]; then
        help;
    elif [ $1 == "-v" ]; then
        version;
    fi
else
    showusage;
fi