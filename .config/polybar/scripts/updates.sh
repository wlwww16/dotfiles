#!/bin/bash

# This script will return the number of package updates
# available at any one time, via pacman.
#
# Superuser commands are not ran in this script, but
# pacman needs superuser to sync repositories (and
# therefore get updates).
#
# To solve this, run pacman -Sy as a cronjob every n
# minutes, where n is something less than this module's
# interval time.

# Get a list of package updates, count number of lines
updates=$(pacman -Qu | wc -l)

# If number of updates is not equal to zero...
if [[ "$updates" -ne "0" ]]; then
	echo $updates;
fi
