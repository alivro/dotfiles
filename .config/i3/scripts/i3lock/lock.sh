#!/bin/bash

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
