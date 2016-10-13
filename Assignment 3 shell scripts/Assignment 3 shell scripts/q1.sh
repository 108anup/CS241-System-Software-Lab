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

	find $1 -maxdepth 1 -type f |(while read -r i; do
		if [ $[${#i}] -gt $[maxlength] ]; then
			maxlength=${#i};
			str=$i;
		fi
	done
	# echo "${1: -1}";
	if [ "${1: -1}" != "/" ]; then
		prefix=$1"/";
	else
		prefix=$1;
	fi
	# echo $prefix;
	post=${str#$prefix};
	echo $post;)

	IFS="$oIFS";


else
	echo "Directory Does not Exist";
fi
