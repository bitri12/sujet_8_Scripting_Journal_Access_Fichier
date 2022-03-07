#!/bin/bash
source includes/fonctionalite.sh
menu() {
        echo "--------- Menu --------"
        echo "0) Quitter le Programme"
        echo "1) AfficheFile"
        echo "2) AfficheDirectory"
        echo "3) NB"
        echo "4) DirectoryUser"
        echo "5) dateAcess"
        echo "6) datemodif"
        read -p "Option : " choix
       case $choix in
            0) echo "Aurevoir !" ;;
            1) AfficheFile ;;
            2) AfficheDirectory;;
            3) NB;;
            4) DirectoryUser;;
            5) dateAcess;;
            6) datemodif;;
            *) echo "L'option que vous avez selectionner n'existe pas !" ;;
        esac
    return 0
}
