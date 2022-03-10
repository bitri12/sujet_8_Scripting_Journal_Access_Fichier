#!/bin/bash

showusage(){
    echo "trace.sh: [-m] [-h] [-v] [-g] chemin.."
    exit 2
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
    if [ -d $OPTARG ]; then
        echo "Le nombre de fichier dans le dossier est " > ./logs/${OPTARG}_count
        ls $OPTARG | wc -l >> ./logs/${OPTARG}_count
    else
        echo "Erreur, ce dossier n'existe pas"
    fi
}

DirectoryUser(){
    if [ -d $OPTARG ]; then
        ls -l $OPTARG | cut -d' ' -f3 > ./logs/${OPTARG}_owner
    else
        echo "Error, ce répertoire n'existe pas"
    fi
}
dateAcess() {
    echo "Derniere d'access du fichier $OPTARG a ete effectuer le " > ./logs/${OPTARG}_date_Journal 
    stat logs | grep -i Accès | grep -i +0100 >> ./logs/${OPTARG}_date_Journal
}

datemodif() {
    echo "Derniere Modification du fichier $OPTARG a ete effectuer le " > ./logs/${OPTARG}_modif_journal 
    date -r $OPTARG >> ./logs/${OPTARG}_modif_journal
}

 stat() {
     if [ -d $OPTARG ]; then
     else
        echo "Erreur"
 }