#!/bin/bash

miip=`curl ifconfig.me 2>/dev/null`

echo "Tu IP publica es: "$miip

# PARA QUE ESTO FUNCIONE DEBE ESTAR INSTALADO XCLIP
# SI NO LO ESTA HAZ: sudo apt-get install xclip
echo $miip | xclip -selection clipboard
echo "Te la he copiado al portapapeles"
