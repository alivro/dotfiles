#!/bin/bash

pkill -f nm-applet
pkill -f pamac-tray
pkill -f volumeicon
pkill -f xfce4-clipman

nm-applet --indicator &
pamac-tray &
volumeicon &
xfce4-clipman &
