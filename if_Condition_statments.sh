#!/bin/bash

#if and condition statments

#a=$1
#b=$2
#if [ $a==$b ]
#then
#echo "a, b are equal"
#fi

#a=$1
#b=$2
#echo " a value is $a "
#echo " b value is $b "
#if [ $a == $b ]
#then
#	echo "a,b are equal"
#else
#	echo "a,b are not equal"
#fi

a=$1
b=$2
c=$3
if [ $a == $b ]
then
	if [ $a == $c ]
	then
		echo "a,b,c are equal"
else
	echo "only a,b are equal"
fi

else
	echo "a,b,c are not equal"
fi
