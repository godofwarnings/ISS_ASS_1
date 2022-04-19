#!/bin/bash

echo "Part A"
echo
echo
grep . quotes.txt
grep . quotes.txt > q1_a.txt

echo
echo
echo "Part B"
echo
echo

grep . quotes.txt | awk '!seen[$0]++'
grep . quotes.txt | awk '!seen[$0]++' > q1_b.txt
