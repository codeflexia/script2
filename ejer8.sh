#! /bin/bash


function existencia_usuario(){
	clear
	read -p "Nombre de usuario: " NAME
	
	if [ $(grep ^$NAME /etc/passwd) ]; then
	export NAME
		return 1 
	else
		return 0
	fi
}


function info_user(){
	echo "Nombre usuario (UID): $(id $NAME | cut -d ' ' -f1)"
	echo "Grupo Primario: $(id $NAME | cut -d ' ' -f2)"
	echo "Grupos secundarios: $(id $NAME | cut -d ' ' -f3)"
}



existencia_usuario

if [ $? ]; then
	info_user
else
	echo "El usuario no existe"
fi
