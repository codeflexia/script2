#! /bin/bash

# Condicion #
	if [ $# -ne 0 ]; then
		clear
		echo "Doesn't need arguments"
		exit 1
	fi


# Varibles #
	USERS_FILE=/etc/passwd
	USERS=$(sort $USERS_FILE | cut -d ":" -f1,3,6,7)


# Mostrar por pantalla #
	clear
	for X in $USERS; do
		if [ $(echo $X | cut -d ":" -f2) -ge 1000 ]; then
			echo $X
		fi
	done
