#!/bin/bash


read input 
echo "input is $input"
c=`expr $input - 1`
a=0

while [ $a -lt $input -a $input -lt 10 ]
do
      #echo $a
      #echo $c
      b=`expr $a + 1`
      l=`expr $a + 1`
      m=$c
      while [ $m -gt 0 ]
      do
         echo -e " \c"
         m=`expr $m - 1`
      done
      while [ $l -gt 0 ]
      do
      echo -e "$b \c"
      l=`expr $l - 1`
      done
   echo -e "\n"
      a=`expr $a + 1`
      c=`expr $c - 1`
done
while [ $a -lt $input -a $input -ge 10 ]
do
   d=$((($input)/2))
      #echo $a
      #echo $c
      b=`expr $a + 1`
      l=`expr $a + 1`
      m=$c
   while [ $d -gt 0 -a $b -le 9 ]
      do
         echo -e " \c"
         d=`expr $d - 1`
      done  
      while [ $m -gt 0 ]
      do
         echo -e " \c"
         m=`expr $m - 1`
      done
      while [ $l -gt 0 ]
      do
      echo -e "$b \c"
      l=`expr $l - 1`
      done
   echo -e "\n"
      a=`expr $a + 1`
      c=`expr $c - 1`
done