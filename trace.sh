#!/bin/bash
source includes/fonctionalite.sh
source includes/menu.sh
source includes/menu_graphique.sh

if [ $# -ge 1 ]; then
   while getopts "hvm:g" var
   do
        case $var in
            h) help ;;
            v) version ;;
            m) AfficheDirectory ;;
            g) menu_graphique ;;
            *) showusage ;;
            esac
   done
else
    showusage;
fi