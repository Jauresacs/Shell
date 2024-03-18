#!/usr/bin/bash
i=0
echo " |_"
while [ $i -lt 4 ]
do
    bars=""
    j=0
    while [ $j -lt $((i+1)) ]
    do
        bars="$bars |"
        j=$((j+1))
    done
    echo "$bars |_"
    i=$((i+1))
done
