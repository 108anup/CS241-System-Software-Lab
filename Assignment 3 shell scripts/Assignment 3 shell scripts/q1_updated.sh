#!/bin/bash

if [ -d $1 ]; then
	# echo -e "Directory Exists\n";
	# echo $1;
	# # files=`find $1 -maxdepth 1 -type f`;
	# # for filename in $files; do
	# # 	echo $filename;
	# # done

	oIFS="$IFS";
	IFS=$'\n'

	maxlength=0
	str=""

	find $1 -maxdepth 1 -type f -printf "%f\n" |(while read -r i; do
		if [ $[${#i}] -gt $[maxlength] ]; then
			maxlength=${#i};
			str=$i;
		fi
	done
	echo $str;)

	IFS="$oIFS";


else
	echo "Directory Does not Exist";
fi
