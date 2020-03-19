#!/bin/bash -x

echo "Welcome To Arithmetic Computation And Sorting Problems"

#constants
readonly TOTAL_EXPRESSION=4

#dictionary
declare -A expressionsResult

read -p "Enter Three Numbers : " a b c

#Storing result in dictionary
expressionsResult[expression1_result]=$(echo "scale=2; $a+$b*$c" | bc )
expressionsResult[expression2_result]=$(echo "scale=2; $a*$b+$c" | bc )
expressionsResult[expression3_result]=$(echo "scale=2; $c+$a/$b" | bc )
expressionsResult[expression4_result]=$(($a%$b+$c))

#Storing result in array
for(( i=0;i<TOTAL_EXPRESSION;i++))
do
	eval resultArray[$i]=${expressionsResult[expression$((i+1))_result]}
done
