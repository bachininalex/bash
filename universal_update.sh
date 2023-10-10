#!/bin/bash

file=path/to/some/file

if grep -q "Some text in file" $file
then
	# Print text if <if> statement if True
	echo "Text exist"
fi

if grep -q "some text" $file || grep -q "some text" $file
then
	echo "Do something"
fi

