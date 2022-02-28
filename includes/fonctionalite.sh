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
     ls -l $OPTARG | grep -v '^d' > ./logs/${OPTARG}_files
}
AfficheDirectory() {
     ls -l $OPTARG | grep '^d' > ./logs/${OPTARG}_directories
}

NB() {
    echo "Le nombre de fichier dans le dossier est " > ./logs/${OPTARG}_count
    ls $OPTARG | wc -l >> ./logs/${OPTARG}_count
}

DirectoryUser(){
    ls -l $OPTARG | cut -d'' -f3 > ./logs/${OPTARG}_owner
}
dateAcess() {
    echo "Derniere d'access du fichier $OPTARG a ete effectuer le " > ./logs/${OPTARG}_date_Journal 
    $OPTARG >> ./logs/${OPTARG}_date_Journal
}

datemodif() {
    echo "Derniere Modification du fichier $OPTARG a ete effectuer le " > ./logs/${OPTARG}_modif_journal 
    date -r $OPTARG >> ./logs/${OPTARG}_modif_journal
}

 stat() {
     echo "stat"
 }