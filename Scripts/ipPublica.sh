#!/bin/bash

# Cargamos los colorines
if [ -f ~/.colores.sh ]
then
        source ~/.colores.sh
fi

url="ifconfig.me"
google="www.google.com"

# COMPROBAMOS SI TENEMOS INTERNET
internet=0
ping -c 1 -w 2 $google > /dev/null 2>&1

if [ $? -eq 0 ]
then
	internet=1
else
	echo "No tienes acceso a internet"
	exit 1
fi

# OBTENEMOS LA IP
miip=`curl $url 2>/dev/null`

echo "Tu IP publica es: "$miip

# PARA QUE ESTO FUNCIONE DEBE ESTAR INSTALADO XCLIP
# SI NO LO ESTA HAZ: sudo apt-get install xclip
echo $miip | xclip -selection clipboard
echo "Te la he copiado al portapapeles"
