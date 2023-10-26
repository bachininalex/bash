#!/bin/bash

logfile=job_result.log

echo "The script run at $(date)" > $logfile  # Write data to logfile(craetaed automaticly)


# to run sheduled job use <at> command
# at <time> -f ./script_name.sh

# atq - show list command 
# atrm <job number> / atrm 3 - remove job


 

# crrontab -e / edit crone and modify 

# 30 1 * * 5 /usr/local/bin/script 