#!/bin/bash

read s
len=${#s}

for (( i=$len-1; i>=0; i-- ));
do
    rev_s=$rev_s${s:$i:1}
done

echo "Reversed String: $rev_s"
echo "Part A : $rev_s"

echo "$rev_s" | tr '{{ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}}' '{{BCDEFGHIJKLMNOPQRSTUVWXYZAbcdefghijklmnopqrstuvwxyza}}' | awk '{print "Part B: " $1}' 
rev_half1=${s:0:$len/2}
rev_half2=${s:$len/2:$len}

len2=$len/2

for (( i=(($len2)); i>=0; i-- ));
do
    rev_half=$rev_half${rev_half1:$i:1}
done

q3_c=$rev_half$rev_half2
echo "Part C : $q3_c"

