
#Neofetch al empezar (el dibujito y las caracteristicas el sistema)
echo
neofetch --backend chafa --source /home/jose/Imágenes/fu.png --size 475


#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


# CUSTOM ALIASES
alias cat='bat'
alias catOld="/bin/cat"





# FUNCIONES

#Crea todas las ramas de pentest de una maquina
function mkt(){
	mkdir {content,exploits,nmap,scripts,tmp}
}

function listPorts(){
	#PARA QUE ESTO FUNCIONE A LA HORA DE ESCANEAR DEBEMOS PONER ESTO:
	#nmap -p- --open -T5 -v -n -oG allPorts {IP_ADRESS}

	#declaramos las variables
	ip_address=$(cat allPorts | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u)
	ports=$(cat allPorts | grep  -oP '\d{1,5}/open' | awk '{print $1}' FS="/" | xargs | tr ' ' ",_")

	#printeamos
	echo -e "\n${yellowColour}[*] Extrayendo informacion...${endColour}\n"
	echo -e "\t${turquoiseColour}[*] IP ADDRESS: ${endColour}${grayColour}$ip_address${endColour}"
	echo -e -n "\t${redColour}[*] OPEN ports: ${endColour}${grayColour}$ports${endColour}\n"


	#copiamos los puertos al portapapeles
	echo $ports | tr '\n' ' '| xclip -selection clipboard


	echo -e "\n${yellowColour}[*] Puertos copiados al portapapeles${endColour}\n"
}



