#!bin/bash
#Record country with highest life expectancy
#usage: sh script.sh inputfile year columnNumber OutputFileName

input=$1
year=$2
columns=$3
out=$4

cut -f1,3,$columns $input | grep $year | sort -n -k3 | tail -n 1 > $out.txt
