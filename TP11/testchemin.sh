if [ $# -ne 1 ]; then
	echo "Entrez un chemin"
	exit 1
fi

chemin=$1

echo "chemin à tester : $chemin"

IFS='/' read -a tab <<< $chemin

current_path='/'

for directory in "${tab[@]}"; do

	current_path="$current_path$directory"

	if [ -d "$current_path" ]; then
		echo "$directory  chemin valide "
	else
		echo "$directory chemin invalide, le fichier n'existe pas dans /usr/local"
		exit 1
	fi
	
		current_path="$current_path/"	
done

exit 0
	



