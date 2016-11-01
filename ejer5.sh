#! /bin/bash


# Condicion #
	clear
	if [ $# -ne 0 ]; then
		echo "Doesn't need arguments"
		exit 1 
	fi


# VARIABLES #
	NEW_DIR=~/bin




# Se comprueba que el directorio ~/bin Exista. Pregunta si desea crearlo #
	clear
	if [ ! -d $NEW_DIR ]; then
		echo "The directory $NEW_DIR doesn-t exist."
		read -p "¿Do you want create it? [y/n]: " SELECT
		
		if [ $SELECT == "y" ]; then
			mkdir $NEW_DIR
		else
			echo "Impossible continue with the script"
			exit 2
		fi
	fi


# Se realiza una copia del PWD a la carpeta "bin" del HOME #
	for X in *; do
		if [ -x "$X" ]; then
			cp "$X" $NEW_DIR
			echo "File $X move to ~/bin/"
		else 
			echo "$X can't be move"
		fi
	done
