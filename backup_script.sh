#!/bin/bash


# Check the user entered two argumnets

if [ $# -ne 2 ]
then
	ehco "Please try again"
	exit 1
fi	


# check if rsync installed

if ! command -v rsync > /dev/null 2>&1
then
	ehco "Required rsync installed"
	exit 2
fi

# Cuptured current date
current_date=$(date +Y-%m-%d)

rsync_options="-avd --backup-dir $2/current_date --delete --dry-run"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log



