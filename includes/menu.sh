#!/bin/bash

menu() {
    while [ $choix -ne 0]
    do
       

       case $choix in
        0) echo "Aurevoir !" ;;
        *) echo "Erreur dans votre selection !" ;;
        esac
    done
}