#!/bin/bash
echo -e "Ctrl + C to Exit\n"
while true; do
	printf "Enter 2 Values (Separated by Space):\t"
	read input

	arr=(`echo ${input}`)
	x=${arr[0]};
	y=${arr[1]};


	printf "Enter Operand (+,-,/,*):\t"
	read operand

	ans=$(echo "$x $operand $y" | bc -l)
	echo "$x $operand $y = $ans"

done