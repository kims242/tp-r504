a=$(cat liste1.txt)

sudo  addgroup  t_user

for i in $a; do 
        sudo adduser --disabled-password --gecos "" "$i"	
        sudo usermod -aG t_user  "$i" 		
 echo "l'utilisateur $i a été créé et ajouté au groupe tptest"

done
