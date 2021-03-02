#!/bin/bash 

echo  "Enter how many times to flip a coin :" 
read num
headCount=0;
tailCount=0;
 		
		for ((i=1; i<=$num; i++))
			do
			flipCoin=$((RANDOM%2))
			if [ $flipCoin -eq 1 ]
				then
				((headCount++))
				else 
				((tailCount++))
			fi
			done
echo "the heads count is $headCount and the tails count is $tailCount" 
if [ $headCount -gt $tailCount ]
then
	echo Heads is the winner
elif [ $headCount -lt $tailCount ]
then
	echo Tails is the winner
else 
	echo "it's a tie"
fi

