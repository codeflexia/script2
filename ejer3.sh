#! /bin/bash


clear
function usage(){
	echo "Este script recibe un directorio como parametro."
	echo "Comprueba si existe y si es posible, muestra su contenido" 
	echo 
	echo "Introduce un nombre de directorio"
}

function listar_contenido {
	for F in *; do
		if [ -f "$F" ]; then
			echo "$F es un fichero"
		elif [ -d "$F" ]; then
			cd "$F"
			listar_contenido 
			cd ..	
		fi
	done
}



# Condicion #
	if [ $# -ne 1 ]; then
		usage
		exit
	fi


clear
# Comprobacion existencia y listado de contenido #
	if [ ! -d "$1" ]; then
		echo "El directorio $1 no existe."
		exit
	fi

	if [ -r "$1" ] && [ -w "$1" ]; then
		cd "$1"
		listar_contenido "$1"
	else
	    	echo "Problemas de permisos a la hora de lista el contenido"
		exit
	fi
