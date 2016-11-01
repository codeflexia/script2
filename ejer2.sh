#! /bin/bash


clear
function usage(){
	echo "Este script recibe varios nombre de archivo como parametro e		indica si existen, si es así, se muestran en pantalla paginando. 		Introduce varios nombres de archivos como parametros" | fmt
}



# Condicion #
	if [ $# -lt 2 ]; then
		usage
		exit
	fi

# Comprobacion existencia #
	for X in $*; do
		if [ -f $X ]; then
			echo "El fichero \"$X\" existe"
			read -p "Presione un tecla para ver el fichero" VER
			more "$X"
			clear
		else
			echo "El fichero $X no existe"
		fi
	done

