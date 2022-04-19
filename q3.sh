#!/bin/bash

read file
wc -c $file | awk '{ print "Part A: "$1 }'
wc -l $file | awk '{ print "Part B: "$1 }'
wc -w $file | awk '{ print "Part C: "$1 }'
awk '$0="Line No: "NR" - Count of Words: "NF' $file > q3_d.txt

grep . $file |

while read line
do
    IFS='~'
    read -ra line <<< "$line"
    echo "${line[1]} once said ${line[0]}"
done |

cat | tr -d '{{,-;:}}' |
cat | tr ' ' '\n' | sort | uniq -cd | awk '/a/ {print "Word: " $2 " - " "Count of repetitions: " $1}' > q3-e.txt
#awk '{print Word: $1 - Count of repetition: $0}'


