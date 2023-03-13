#!/bin/bash

function powerMenu {
	options="Poweroff\nReboot\nSuspend\nLock\nLogout"

	selected=$(echo -e ${options} | dmenu -i -p "Power Menu" \
			-fn "Noto Sans Regular-11" -nb "#111111" -nf "#888888" -sb "#03396c" -sf "#ffffff")

	case $selected in
		Poweroff)
			poweroff
			;;
		Reboot)
			reboot
			;;
		Suspend)	
			systemctl suspend
			;;
		Lock)
			./.config/i3/scripts/betterlockscreen/lock.sh
			;;
		Logout)
			i3-msg exit
			;;
	esac
}

powerMenu
