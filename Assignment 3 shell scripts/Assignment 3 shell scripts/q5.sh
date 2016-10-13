#!/bin/bash

printf "Enter the Number of Rows:\t"
read num

echo -e "\n"
for i in `seq 1 $[$num]`; do
	for j in `seq 0 $[ $[$num] - i ]`; do
		printf " "
	done
	for j in `seq 1 $[i]`; do
		printf $i" "
	done
	printf "\n\n";
done

echo -e "\n"

for i in `seq 1 $[$num]`; do
	for j in `seq 1 $[ $[$num] - i ]`; do
		printf " "
	done
	for j in `seq 1 $[i]`; do
		printf ". "
	done
	echo -e "\n";
done

x+=" , ";
for i in `seq 1 $[$num]`; do
	for j in `seq 0 $[ $[$num] - i ]`; do
		x+=" , "
	done
	for j in `seq 1 $[i]`; do
		x+=$i" , , "
	done
	x+="\n";
done
echo -e $x | column -te -s $','