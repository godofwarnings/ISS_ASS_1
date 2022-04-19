#!/bin/bash

grep . quotes.txt | 

while read line 
do
    IFS='~'
    read -ra line <<< "$line"
    echo "${line[1]} once said ${line[0]}"
done > speech.txt 
