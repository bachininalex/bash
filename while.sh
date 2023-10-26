#!/bin/bash

myvar=1

# WHILE scripting

while [ $myvar -le 10 ] # -le - less than $myvar
do
	echo $myvar
	myvar=$(( $myvar + 1  )) # new variable to replace original
	sleep 0.5
done

# ----------

