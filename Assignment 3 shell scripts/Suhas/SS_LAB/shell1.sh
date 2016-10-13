#!/bin/bash
maxlen=0
if [ -f $1 ];then
  echo "the directory do not exist";
else
for file in `find $1 -type f` ; do

    len=`echo "$file" | gawk -F\/ '{printf "%s", $NF}' | wc -c`
    [ $len -gt $maxlen ] && maxlen=$len && maxfile=$file
    
done

echo $len $maxfile
fi