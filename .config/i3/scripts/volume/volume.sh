#!/bin/bash

# Arbitrary but unique message tag
messageTag="myvolume"

# Icon sets
iconsPath="$HOME/.config/i3/scripts/volume/icons"

mute="$(pactl list sinks | grep "Silencio:" | awk '{print $2}')"
volume="$(pactl list sinks | grep "Volumen:" | awk '{print $5}' | sed 's/.$//')"

if [[ "$mute" == "sí" ]]; then
	icon="audio-volume-muted"
	message="Muted"
else
	if [[ $volume -eq 0 ]]; then
		icon="audio-volume-zero"
	elif [[ $volume -lt 25 ]]; then
		icon="audio-volume-low"
	elif [[ $volume -lt 50 ]]; then
		icon="audio-volume-medium"
	else
		icon="audio-volume-high"
	fi

	message="${volume}%"
fi

# Show the volume notification
dunstify -a "changeVolume" -u low -i ${iconsPath}/${icon}.png -h string:x-dunst-stack-tag:$messageTag \
-h int:value:"$volume" "Volumen: ${message}"

# Play the volume changed sound
#canberra-gtk-play -i audio-volume-change -d "changeVolume"
