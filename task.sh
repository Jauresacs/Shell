#!/usr/bin/bash

TASK_FILE="tasks.txt"

function add_task() {
    echo "Ajouter une nouvelle tâche :"
    read -p "Description : " description
    read -p "Date d'échéance (YYYY-MM-DD) : " due_date

    echo "$description | $due_date | INCOMPLETE" >> "$TASK_FILE"
    echo "Tâche ajoutée avec succès!"
}

function list_tasks() {
    if [ -e "$TASK_FILE" ]; then
        echo "Liste des tâches :"
        cat "$TASK_FILE"
    else
        echo "Aucune tâche enregistrée."
    fi
}

# Ajoutez d'autres fonctions pour marquer une tâche comme terminée, supprimer une tâche, etc.

# Menu principal
while true; do
    echo  "Menu :"
    echo "1. Ajouter une tâche"
    echo "2. Afficher les tâches"
    echo "3. Quitter"

    read -p "Choisissez une option : " choice

    case $choice in
        1)
            add_task
            ;;
        2)
            list_tasks
            ;;
        3)
            echo "Au revoir!"
            exit 0
            ;;
        *)
            echo "Option invalide. Veuillez choisir une option valide."
            ;;
    esac
done
