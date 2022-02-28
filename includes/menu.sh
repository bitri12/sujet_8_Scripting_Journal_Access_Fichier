#!/bin/bash

menu() {
    while [[ $choix -ne 0 ]]
    do
        echo "--------- Menu --------"
        echo "0) Quitter le Programme"
        echo "1)"
        echo "2)"
        echo "3)"
        echo "4)"
        echo "5)"
        echo "6)"
        read -p "Option" choix
       case $choix in
            0) echo "Aurevoir !" ;;
            *) echo "L'option que vous avez selectionner n'existe pas !" ;;
        esac
    done
    return 0
}