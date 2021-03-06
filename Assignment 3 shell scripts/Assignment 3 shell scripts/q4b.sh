#!/bin/bash

printf "Tower 0 => Source\nTower 1 => Destination\nTower 2 => Temporary\n\n"

printf "Enter the Number of Disks on Source (Tower 0):";
read d;

for x in `seq 1 $[ (1<<d) -1 ]`; do
	i=$(( ( x&(x-1) ) % 3 ))
	j=$(( ( ( x|(x-1) ) +1 ) % 3 ))
	printf "Move disk from $i to $j\n";
done
