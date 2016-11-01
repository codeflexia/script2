#! /bin/bash



function usage(){
	echo "Este script recibe un nombre de archivo como parametro y 			devuelve sus permisos por pantalla. Introduce un solo nombre de 		archivo" | fmt
}



# Condicion #
	if [ $# -ne 1 ]; then
		usage
		exit
	fi

# Comprobacion permisos #
	if [ -r $1 ]; then
		echo "El fichero tiene permisos de lectura"
	fi

	if [ -w $1 ]; then
		echo "El fichero tiene permisos de escritura"
	fi

	if [ -x $1 ]; then
		echo "El fichero tiene permisos de ejecucion"
	fi
