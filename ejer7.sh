#! /bin/bash


function menu(){
	echo "1) Grupo1"
	echo "2) Grupo2"
	echo "3) Grupo3"
	read -p "Select Group [1-3]: " SELECT
	return SELECT
}


function grupo1(){
	clear
	TEMP=/tmp/ejer7

	echo "Grupo:GID:users" >> $TEMP
	echo "-----:---:-----" >> $TEMP
	sort /etc/group | cut -d ":" -f1,3,4 >> $TEMP

	cat $TEMP | column -s: -t | more -20
	rm $TEMP
}


function grupo2(){
	clear
	TEMP=/tmp/ejer7

	echo "Grupo:GID:users" >> $TEMP
	echo "-----:---:-----" >> $TEMP
	sort -k2 /etc/group | cut -d ":" -f1,3,4 >> $TEMP

	cat $TEMP | column -s: -t | more -20
	rm $TEMP
}

function grupo3(){
	clear
	TEMP=/tmp/ejer7

	echo "$HOSTNAME:$(date)" >> $TEMP
	echo "Grupo:GID:users" >> $TEMP
	echo "-----:---:-----" >> $TEMP
	sort /etc/group | cut -d ":" -f1,3,4 >> $TEMP

	cat $TEMP | column -s: -t | more -20
	rm $TEMP
}

menu
case $? in
1) grupo1 ;;
2) grupo2 ;;
3) grupo3 ;;
*) 
	Please, select a group
	exit ;;
esac
