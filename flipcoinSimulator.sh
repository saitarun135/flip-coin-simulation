#!/bin/bash 
target_count=21;
headCount=0;
tailCount=0;
flipCount=0;

while [ 1 ]
do
((flipCount++))
toss=$((RANDOM%2))
echo -n "flip-$flipCount :"
if [ $toss -eq 1 ]
then
	echo "Heads"
	((headCount++))
else
	echo "TAILS"
	((tailCount++))
fi
if [[ $tailCount -eq 21 || $headCount -eq 21 ]]
then
break;
fi
done
echo "the head count is $headCount and the tailcount is $tailCount "

if [ $headCount -gt $tailCount ]
then
	echo "Heads won by $(($headCount-$tailCount))"
elif [ $headCount -lt $tailCount ]
then
	echo "Tails won by $(($tailCount-$headCount))"
else 
echo "Both are tie($headCount=$tailCount) "
fi

