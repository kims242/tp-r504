a=$(cat liste1.txt)

sudo  addgroup tptest

for i in $a; do 
        sudo userdel "$i"        
        sudo groupdel dupont
        sudo groupdel duval
	sudo groupdel tptest                        
 echo "l'utilisateur $i a été créé et ajouté au groupe tptest"

done

1
