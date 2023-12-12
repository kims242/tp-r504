PS3='Sélectionnez'
options=("Option 1" "Option 2" "Option 3")
select opt in "${options[@]}"
do
	case $opt in
		"Option 1")
				echo "1 - Vérifier l’existence d’un utilisateur"
				;;
		"Option 2")
				echo "2 - Connaître l’UID d’un utilisateur"
				;;
		"Option 3")
				echo "q - Quitter"
				;;
		*) echo "invalid option $REPLY";;
	esac
done
