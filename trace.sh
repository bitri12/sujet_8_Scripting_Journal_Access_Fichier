#!/bin/bash
source fonctionalite.sh
source menu.sh
if [ $# -ge 1 ]; then
   if [ $1 == "-m" ]; then
        menu;
    fi
else
    echo showusage;
fi