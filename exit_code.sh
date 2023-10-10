#!/bin/bash

# Variable <$?> saved last exit code for program

package=htop
directory=/etcer

sudo apt intall $package >> ustall.log

if [ $? -eq 0 ]
then
	echo "Instalation completted"
else
	echo "Instalation failed"

fi

if [ -d $directory ] 
then
	echo "Directory $directory exists"

else
	echo "Directory $directory not exists"
	# Add exit code explicity, all code above not executed
	exit 34
fi

