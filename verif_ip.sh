#!/usr/bin/bash

echo -n "Entrer une adresse IP : "
read adresse

octet1=$(echo $adresse | cut -d "." -f1)
octet2=$(echo $adresse | cut -d "." -f2)
octet3=$(echo $adresse | cut -d "." -f3)
octet4=$(echo $adresse | cut -d "." -f4)

if [ $octet1 -lt 0 -o $octet1 -gt 255 ]
then
    echo "ERREUR : $adresse est une adresse invalide. $octet1 est un octet incorrect."
    exit 1
fi
if [ $octet2 -lt 0 -o $octet2 -gt 255 ]
then
    echo "ERREUR : $adresse est une adresse invalide. $octet2 est un octet incorrect."
    exit 1
fi
if [ $octet3 -lt 0 -o $octet3 -gt 255 ]
then
    echo "ERREUR : $adresse est une adresse invalide. $octet3 est un octet incorrect."
    exit 1
fi
if [ $octet4 -lt 0 -o $octet4 -gt 255 ]
then
    echo "ERREUR : $adresse est une adresse invalide. $octet4 est un octet incorrect."
    exit 1
fi

echo -n "$adresse est une adresse valide. Voulez-vous l'enregistrer dans un fichier (O/N) ? "
read reponse

if [ "$reponse" = "O" -o "$reponse" = "o" ]
then 
    echo -n "Donner le nom du fichier : "
    read fichier
    
    echo "Vérification de la non-redondance de l'adresse dans le fichier..."

    if [ -e $fichier ]
    then 
        grep -q "$adresse" $fichier
        if [ $? -eq 0 ]
        then 
        echo "ERREUR : $adresse existe déjà dans le fichier $fichier"
        fi
    else
        echo $adresse >> $fichier
        echo "Ajout de l'adresse $adresse dans le fichier $fichier"
    fi
else 
    echo "L'adresse IP ne sera pas enregistrée, merci"
fi
