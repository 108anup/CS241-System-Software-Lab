#!/bin/bash
while true
do
	echo "Enter two values"
	read a
	read b
	echo "Enter operand ( +, -, /, *): +"
	read c	
	if [ "$c" == "*" ]
	then	
		val=`expr $a \* $b`
		echo "OUTPUT : $val"
	else
		val=`expr $a $c $b`
		echo "OUTPUT : $val"
    fi
done