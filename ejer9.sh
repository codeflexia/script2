#! /bin/bash


function existencia_grupo(){
	clear
	read -p "Nombre de grupo: " GROUP
	
	if [ $(grep ^$GROUP /etc/group) ]; then
		return 1
	else
		return 0
	fi
}


function info_grupo(){
	FILE_GROUP=/etc/group
	FILE_USERS=/etc/passwd

	echo "Nombre grupo (GID): $GROUP $(grep ^$GROUP_FILE | cut -d ':' -f3)"
	echo "Usuarios: $(grep ^GROUP_FILE | cut -d ':' -f4)"
}


existencia_grupo
if [ $? ]; then
	info_grupo
else
	echo "El grupo no existe"
fi
