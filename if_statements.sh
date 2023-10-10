#!/bin/bash


mynum=100

if [  $mynum -ne 100 ]  # ! is exclumation marks or use <ne> not equal instead <eq>
then 
	echo "The condition is True"
else 
	echo "Condition is False"
fi


# -eq
# -gt
# -ne

if [ -f file ]
then 
	echo "File exists"
else
	echo "File not exists"
fi


# Check module and istall it if needed and run
command=/usr/bin/htop

if [ -f $command ]  # <if command -v htop> as analog command in if
then
	echo "$command is available, let's run it"
else
	echo "$command is not available, let's install it"
	sudo apt update && sudo apt install -y htop
fi

$command



