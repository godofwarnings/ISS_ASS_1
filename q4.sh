#!/bin/bash

read -a array

size=${#array[@]}

echo "Unsorted Array"
echo ${array[*]}

for (( i = 0; i < $size ; i++ ))
do
    for (( j = $i; j < $size; j++ ))
    do
        if [ ${array[$i]} -gt ${array[$j]}  ]; then
        temp=${array[$i]}
        array[$i]=${array[$j]}
        array[$j]=$temp
        fi
    done
done

echo "Sorted Array"
echo ${array[*]}
