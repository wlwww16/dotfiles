#!/bin/bash

# This script will attempt to find the process ID (PID)
# of a window by the name of "Polybar tray window".
#
# If the result is an integer, i.e. a PID is found,
# the window exists, it will kill that PID thereby
# closing the tray.
#
# If the result is a string, i.e. an error generated
# by xprop because the window does not exist, it will
# launch the tray.

exists=$(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*')

case $exists in
	''|*[!0-9]*) polybar tray >> /tmp/polybar2.log 2>&1 ;;
	*) kill $exists ;;
esac
