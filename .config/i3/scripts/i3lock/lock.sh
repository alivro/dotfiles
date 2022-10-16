#!/bin/bash

# Source:
#	https://andreafortuna.org/2020/04/09/i3-how-to-make-a-pretty-lock-screen-with-a-four-lines-of-bash-script/

# Crea un archivo temporal
img=$(mktemp /tmp/XXXXXXXXXX.png)

# Toma una captura de pantalla del escritorio actual
import -window root $img 

# Aplica un efecto desenfoque a la captura de pantalla
convert $img -blur 2,2 $img

# Ejecuta i3lock con la imagen personalizada
i3lock -i $img

# Elimina el archivo temporal
rm $img
