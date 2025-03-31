#!/bin/bash

clear

echo "Lancement du test"

# vérification du type de l'argument
if [[ "${1}" =~ ^[-+]?[0-9]+$ ]]
then
    :
else
    echo "Argument 1 n'est pas un nombre entier"
    exit
fi

echo "Argument validé, lancement de la création de $1 fichier de chaque type"

mkdir samples

cd samples

cp ../extentions.txt extentions.txt

# fonction pour créer $1 fichiers
function creer_fichiers(){
    for extention in $(cat extentions.txt); do
        for ((i=0; i <= $1; i++)); do # itérer pour le nombre demandé
            touch "$i$extention"
        done
        
        echo "fichiers $extention créés"

    done
    
}

creer_fichiers $1