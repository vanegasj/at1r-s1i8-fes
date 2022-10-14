#!/bin/bash

cat colvar* >> temp1.txt

sed '/^#/d' temp1.txt >> temp2.txt
rm temp1.txt

echo "#! FIELDS time TM1_TM6 TM1_ICL2 TM5_ICL2 TM6_H8" > combined_colvar.txt

sort -s -k1,1n temp2.txt >> combined_colvar.txt
rm temp2.txt 


