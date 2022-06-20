#!/bin/bash
WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "1891" ]; then
	echo "Desktop"
else
	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"//g')

	if [ $WM_CLASS == "scratchpad" ]; then
		echo "Dropdown terminal"

	elif [ $WM_CLASS == "st" ]; then
		echo "Terminal"
	
	elif [ $WM_CLASS == "librewolf" ]; then
		echo "Web browser"
	
	elif [ $WM_CLASS == "Pcmanfm" ]; then
		echo "File manager"
	
	else
		echo $WM_CLASS
	fi
fi
