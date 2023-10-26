#!/bin/bash


echo "You entered $1"

# $1 is arguments

echo "You have entered $2, $3"


ls -lh $4

# ./script arg1, arg2, arg3.....


lines=$(ls -lh | wc -l) # Culculate amount of object in folder 

if [ $# -ne 1 ]
then 
	echo "Required only 1 argumnet"
	echo "Please try again"
	exit 1
fi

echo "Yuo have $(($lines-1)) in $1 directory" 



