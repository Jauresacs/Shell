#!/bin/bash

echo "Veuillez entrer votre mot de passe :"
read  password  # -s option permet de masquer la saisie

# Vérification de la longueur minimale
if [ ${#password} -lt 8 ]; then
    echo "La sécurité du mot de passe est faible : il doit contenir au moins 8 caractères."
    exit 1
fi

# Vérification de la présence de chiffres et de lettres
if ! [[ "$password" =~ [0-9] && "$password" =~ [a-zA-Z] ]]; then
    echo "La sécurité du mot de passe est faible : il doit contenir à la fois des lettres et des chiffres."
    exit 1
fi

# Vérification de la présence de majuscules et de minuscules
if ! [[ "$password" =~ [A-Z] && "$password" =~ [a-z] ]]; then
    echo "La sécurité du mot de passe est faible : il doit inclure à la fois des majuscules et des minuscules."
    exit 1
fi

echo "La sécurité du mot de passe est satisfaisante."
