#!/bin/bash

# guessinggame.sh
# Script qui demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire actuel.

# Fonction pour compter le nombre de fichiers dans le répertoire courant
count_files() {
    local num_files
    num_files=$(ls -1 | wc -l)
    echo $num_files
}

# Fonction pour demander à l'utilisateur de deviner
guess_number() {
    local target=$1
    local guess

    while true; do
        read -p "Devinez combien de fichiers se trouvent dans le répertoire actuel: " guess
        
        # Vérification si l'utilisateur a saisi un nombre
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi

        # Comparaison du nombre deviné avec le nombre réel
        if [ "$guess" -lt "$target" ]; then
            echo "Trop bas. Essayez encore."
        elif [ "$guess" -gt "$target" ]; then
            echo "Trop haut. Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
            break
        fi
    done
}

# Programme principal
main() {
    local total_files
    total_files=$(count_files)
    guess_number "$total_files"
}

# Appel de la fonction principale
main
