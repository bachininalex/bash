#!/bin/bash


myname="Alex"
myage="32"

echo "My name is $myname"
echo "My age is $myage"

# Importan to use double quots

files=$(ls)  # Variable will be contains output from <ls> command

echo $files


now=$(date)

echo "The system time is:"

echo $now

echo "You name is: $USERNAME"

# Lowercase use for itself variable
# Upper case for env variables (by convention)