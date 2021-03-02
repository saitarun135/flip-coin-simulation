#!/bin/bash
targetCount=21
minimumDiff=2
headsCount=0
tailsCount=0
flipsCount=0
while [ 1 ]
do
    (( flipsCount++ ))
    echo -n "Flip-$flipsCount is "
    toss=$(( RANDOM % 2 ))
    if [ $toss -eq 1 ]
    then
        echo "Heads"
        (( headsCount++ ))
    else
        echo "Tails"
        (( tailsCount++ ))
    fi
    
    diff_bt_hc_tc=$(( headsCount - tailsCount ))
    diff_bt_tc_hc=$(( tailsCount - headsCount ))
    if [[ $headsCount -eq 21 && $diff_bt_hc_tc -ge minimum_difference ]]
    then
        echo "Heads won by $diff_bt_hc_tc points"
        break
    elif [[ $tailsCount -eq 21 && $diff_bt_tc_hc -ge minimum_difference ]]
    then
         echo "Tails won by $diff_bt_tc_hc points"
         break
    fi
    
done
echo "The Heads count is $headsCount and Tails Count is $tailsCount"
