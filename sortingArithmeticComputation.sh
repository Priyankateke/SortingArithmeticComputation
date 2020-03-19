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

function getResultInOrder()
{
	len=${#resultArray[@]}
	sign=$1
	for((i=0;i<len;i++))
	do
		for((j=$i+1;j<len;j++))
		do
			if(( ${resultArray[i]%.*} $sign ${resultArray[$j]%.*} ))
			then
				temp=${resultArray[j]}
				resultArray[j]=${resultArray[i]}
				resultArray[i]=$temp
			fi
		done
	done
}

#Calling Function with DESC Variable
getResultInOrder '<'
echo "Expressions result in Array After Descending Sort " ${resultArray[@]}

#Calling Function with ASCE Variable
getResultInOrder '>'
echo "Expressions result in Array After Ascending Sort " ${resultArray[@]}
