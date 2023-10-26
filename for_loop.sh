#!/bin/bash



# for i in {1..10}  # 1......10 numbers
# do
# 	echo $i
# 	sleep 1
# done

# Create archive for all files by mask
for file in logfiles/*.log
do
	tar -czvf $file.tar.gz $file
done




