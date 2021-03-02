#!/bin/bash -x

flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 1 ]
then
	echo HEAD
else 
	echo TAILS
fi
