#!/bin/bash
source includes/fonctionalite.sh
sanitize_choice(){
        echo $1 | cut -d '|' -f2 | xargs basename
}
menu_graphique() {
    retour=$(yad --title="Menu graphique" --width 800 --height 200 --text-align="center" --list --radiolist --column="Sélectionné" --column="numero" --column="Option" True "0" "Quiter" False "1" "AfficheFile" False "2" "AfficheDirectory" False "3" "NB" False "4" "DirectoryUser" False "5" "dateAcess" False "6" "dateModif" False "7" "stat")
    choix=$(sanitize_choice $retour)
    case $choix in
        0) echo "Aurevoir !" ;exit 0;;
        1) AfficheFile ;;
        2) AfficheDirectory;;
        3) NB;;
        4) DirectoryUser;;
        5) dateAcess;;
        6) datemodif;;
        7) stat;;
    esac
}

menu() {
    while true
    do
    clear
    echo "--------- Menu --------"
    echo "0) Quitter le Programme"
    echo "1) AfficheFile"
    echo "2) AfficheDirectory"
    echo "3) NB"
    echo "4) DirectoryUser"
    echo "5) dateAcess"
    echo "6) datemodif"
    echo "7) stat"
    read -p "Option : " choix
       case $choix in
            0) echo "Aurevoir !" ;exit 0;;
            1) AfficheFile ;;
            2) AfficheDirectory;;
            3) NB;;
            4) DirectoryUser;;
            5) dateAcess;;
            6) datemodif;;
            7) stat;;
            *) echo "L'option que vous avez selectionner n'existe pas !" ;;
        esac
    done
    return 0
}

if [ $# -ge 1 ]; then
   while getopts "hvm:g" var
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


