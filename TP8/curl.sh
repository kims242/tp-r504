set +x
count1=0
count2=0
for i in {1..100}
do
 a=$(curl http://localhost:83 2>/dev/null)

 if [ "$a" = '<h1>Hello 1</h1>' ]
 then
    ((count1++))
 else
    ((count2++))
 fi
done
echo "c1=$count1"
echo "c2=$count2" 

