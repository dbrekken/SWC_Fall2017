#!bin/bash
#Record country with highest life expectancy
#usage: sh script.sh arg1

input=$1

cut -f1,3,4 $input | grep 2002 | sort -n -k3 | tail -n 1 > CountryHighestLifeExp_3.txt
