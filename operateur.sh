#!/usr/bin/bash
reponse = " "
while [ "$reponse" != "oui" -a "$reponse" != "non" ]
do 
    echo "Souhaitez vous continuer??"
    read reponse
done