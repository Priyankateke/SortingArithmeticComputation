#!/bin/bash -x

echo "Welcome To Arithmetic Computation And Sorting Problems"

declare -A expressionsResult

read -p "Enter Three Numbers : " a b c

expressionsResult[expression1_result]=$(echo "scale=2; $a+$b*$c" | bc )
expressionsResult[expression2_result]=$(echo "scale=2; $a*$b+$c" | bc )
expressionsResult[expression3_result]=$(echo "scale=2; $c+$a/$b" | bc )
expressionsResult[expression4_result]=$(($a%$b+$c))
