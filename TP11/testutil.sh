PS3='Sélectionnez'
options=("Option 1" "Option 2" "Option 3")
select opt in "${options[@]}"
do
	case $opt in
		"Option 1")
				echo "1 - Vérifier l’existence d’un utilisateur" 
				grep  user /etc/passwd
				;;
		"Option 2")
				echo "2 - Connaître l’UID d’un utilisateur"
				id  user | grep -oP 'uid=\K\d+'
				;;
		"Option 3")
				echo "q - Quitter"
				exit 0
				;;
		*) echo "invalid option $REPLY";;
	esac
done
