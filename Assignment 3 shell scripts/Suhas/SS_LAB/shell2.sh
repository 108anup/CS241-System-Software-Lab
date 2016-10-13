#!/bin/bash
#script does not work for float as bash does not support float

read Y

echo "VALUE OF Y IS : $Y \n"
flag=0
my_array[0]=""
while true
do
	echo "USERNAME"
	read name
	echo "\n"
	for i in "${my_array[@]}"
	do
		if [ "$name" == "$i" ]
		then		
			unset flag
			flag=1
		fi
	done	
	if [ "$flag" == 1 ]
	then
		echo "INPUT REPEATED"
		unset flag
		flag=0
	else
		my_array=("${my_array[@]}" $name)

		read a
		read b
		read c
		read d
		read e
		
		val=`expr $a + $b + $c + $d + $e`
		val1=`expr $val / 5`
		echo "$val1"
		echo "hi"

		if [ $val1 -lt $Y ]
		then
			echo "WELCOME!!!"
		else
			echo "THAT WAS CLOSE!!!"	
		fi		
	fi	
done

	







