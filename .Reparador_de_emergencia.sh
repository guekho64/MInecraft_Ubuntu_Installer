#Copyright guekho64 © 2015

#Zona Especial

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)   
null=$(tput sgr0)      

##Rescatador
echo "${negritas}Recuerda: Cualquier cosa que ande mal, o algùn comentario que deseara mandar, 
favor de envìar a: guekho64@gmail.com${null}"
sleep 6.4
clear
echo "${negritas}Este script instalarà las posibles dependencias faltantes para el arranque del 
Instalador. Necesitas internet para poder utilizar tanto el Instalador como este script${null}"
sleep 6.4
clear
echo "${negritas}Probando conexiòn a Internet..."
sleep 3.2
( ping -c 4 www.google.com.mx ) > /dev/null 2>&1
if [ $? -ne 0 ]; then
clear
	echo "${negritas}Al parecer usted no esta conectado a Internet${null}";
	sleep 3.2
	clear
	echo "${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
		sleep 3.2
		exit
else
clear
echo "${negritas}OK${null}"
sleep 2
clear
echo "${negritas}Introduzca su contraseña para continuar${null}"
		clear
		echo "${negritas}Trabajando...${null}"
( sudo apt update;sudo apt install xterm gnome-terminal -y ) > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
clear
echo "${negritas}Listo, puedes continuar con el Instalador${null}"
sleep 3.2
exit
fi;
fi;
