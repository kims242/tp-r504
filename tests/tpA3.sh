if [ "$1" = "" ]
	then 
	 	n1=5
	else
 		n1=$1
fi

echo n1=$n1

if [ "$2" = "" ]
	then
		n2=$(( n1 + 10 ))
	else
		n2=$2
fi

echo n2=$n2

for (( i=5; i<=$n2; i++ ))
do
  echo "$i"
done 
