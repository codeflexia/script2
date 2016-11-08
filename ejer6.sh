#! /bin/bash


# Variables #
	TEMP=/tmp/ejer6.txt

	echo "Usuarios:directorio:shell" >> $TEMP
	echo "--------:----------:-----" >> $TEMP
	sort /etc/passwd | cut -d ":" -f1,6,7 >> $TEMP

# Mostrar por pantalla #
	clear
	cat $TEMP | column -s ":" -t
	rm $TEMP
