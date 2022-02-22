#!/bin/bash

for a in $(ls /bin); do
	case $a in
		pacman) b=$(pacman -Qu | wc -l);;
	esac
done

if [[ "$b" -ne "0" ]]; then
	echo $b;
fi
