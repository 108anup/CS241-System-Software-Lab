#!/bin/bash

printf "Enter the Value of Y i.e. the threshold value:\t"
read y

printf "Enter the number of teams to check:\t"
read num

a[0]="-1"

i=1
while [ $[$i] -le $[$num] ]; do
	printf "Enter the name of the Participant:\t"
	read name

	#Check if Name is not NULL
	if [ ! -z $name ]; then

		flag=0;
		#Check if name is not a Repeat
		for j in `seq 1 $[$i-1]`; do
			if [ "$name" = "${a[$[$j]]}" ]; then
				echo -e "Name Already Exists\n"
				i=$[$i-1];
				flag=1;
				break;
			fi
		done

		if [ $[$flag] -eq 0 ]; then 
			a[$[$i]]=$name;

			printf "Enter the details of the Last five Runs (Press Enter after each Run):\n"
			avg=0;

			for j in `seq 0 4`; do
				read x
				avg=$(echo $avg'+'$x | bc -l);
			done

			avg=$(echo "$avg/5" | bc -l)
			ret=$(echo $avg'>'$y | bc -l)

			if [ $[$ret] -eq 0 ]; then
				echo -e "Welcome to the Team.\n"
			else
				echo -e "Close, but you did not make it.\n"
			fi
		fi

	else
		printf "Invalid Name.\n"
		i=$[$i-1];
	fi
	i=$[$i+1];
done