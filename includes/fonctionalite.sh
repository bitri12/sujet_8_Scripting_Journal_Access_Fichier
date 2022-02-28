#!/bin/bash

showusage(){
    echo "trace.sh: [-h] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.."
}

help(){
    cat ./textfiles/help.txt
}

version() {
    cat ./textfiles/version.txt
}

AfficheFile() {
    return 0
}
AfficheDirectory() {
    echo "Affiche Directory"
}

NB() {
    echo "Le nombre de fichier dans le dossier est " >> ./logs/${OPTARG}_count
    ls $OPTARG | wc -l >> ./logs/${OPTARG}_count
}

DirectoryUser(){
 #  $(stat -c '%U' $OPTARG) >>
 return 0
}
dateAcess() {
    return 0
}

datemodif() {
    echo "Derniere Modification du fichier $OPTARG a ete effectuer le " > ./logs/${OPTARG}_modif_journal 
    date -r $OPTARG >> ./logs/${OPTARG}_modif_journal
}

 stat() {
     echo "stat"
 }