while read v_nom v_passwd
do
  echo "nom=$v_nom passwd=$v_passwd"
  adduser --disabled-password --gecos "" "durand"
  echo $nom:$passwd | chpasswd
done < liste2.txt
