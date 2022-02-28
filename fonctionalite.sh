#!/bin/bash

showusage(){
    echo "trace.sh: [-h] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.."
}

help(){
    cat help.txt
}

version() {
    cat version.txt
}

AfficheFile() {
    echo "Affiche File"
}
AfficheDirectory() {
    echo "Affiche Directory"
}

NB() {
    echo "NB"
}

DirectoryUser(){
    echo "Directory User"
}
dateAcess() {
    echo "dateAccess"
}

 stat() {
     echo "stat"
 }