#!/bin/bash -x

echo "Welcome To Arithmetic Computation And Sorting Problems"
read -p "Enter Three Numbers : " a b c

expression1_result=$(echo "scale=2; $a+$b*$c" | bc )
