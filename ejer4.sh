#! /bin/bash

function usage(){
	clear
	echo "$0 FILE_NAME"
	echo
	echo "Este script recibe un nombre de archivo como parametro"
	echo "Comprueba que existe y que es un archivo comun"
	echo "Lo convierte en ejecutable para el dueño y el grupo"
	echo "Y muestra el modo final"
}

# Condicion #
	if [ $# -ne 1 ]; then
		usage
		exit
	fi

clear
# Realizacion de tareas #
	if [ ! -f "$1" ]; then
		echo "El fichero no es valido o no existe"
		exit
	fi

	UserBits=$(ls -l $1 | cut -c 4)
	GroupBits=$(ls -l $1 | cut -c 7)
	if [ $UserBits != "x" ] || [ $GroupBits != "x" ]; then
		chmod ug+x $1
		echo "El archivo \"$1\" se ha convertido en ejecutable para el"
		echo "usuario y grupo"
	else
		echo "El archivo ya es ejecutable para ul usuario y el grupo"
	fi
