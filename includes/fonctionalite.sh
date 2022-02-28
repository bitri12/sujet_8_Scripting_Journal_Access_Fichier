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
    

}
AfficheDirectory() {
    echo "Affiche Directory"
}

NB() {
    wc $OPTARG
}

DirectoryUser(){
    echo "Directory User"
}
dateAcess() {
    return 0
}

datemodif() {
    echo "Derniere Modification le " >> ./logs/$OPTARG._date_journal
    date -r $OPTARG >> ./logs/$OPTARG._date_journal
}

 stat() {
     echo "stat"
 }