#!/bin/bash

# Source:
#	https://major.io/2021/07/12/tray-icons-in-i3/

pkill -f nm-applet
pkill -f volumeicon
pkill -f xfce4-clipman

nm-applet --indicator &
volumeicon &
xfce4-clipman &
