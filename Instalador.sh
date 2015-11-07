#Copyright guekho64 © 2015

#Zona Especial

reset
pkill mintupdate

 Arranque () { (

 Launcher () { ( 

 Instalador () { ( 

 Offline () { ( 

#Copyright guekho64 © 2015 

#!/bin/bash
# Name: /tmp/demo.bash : 
# Purpose: Tell in what directory $0 is stored in
# Warning: Not tested for portability 
# ------------------------------------------------
 
### who am i? ###
_script="$(readlink -f ${BASH_SOURCE[0]})" > /dev/null 2>&1
 
## Delete last component from $_script ##
_base="$(dirname $_script)" > /dev/null 2>&1

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0)       

#Ejemplo:
#echo "${negritas}${cyan}Esta es mi propia prueba de color, pero no ${amarillo}amarillo, sino ${rojo}rojo...aunque bueno, es hora de apagar las luces...${null}"

cd ~

Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"

Minecraft_Icon="[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Offline
Comment=¡Juega en un mundo totalmente abierto!
Icon=/.guekho64/icons/ml.ico
Exec=minecraft-offline
Path=
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false"

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
MinecraftHomeOffline=~/.guekho64/minecraft/launchers/offline
Secret=~/.guekho64/minecraft/.secret

reset
echo "${negritas}${cyan}¿Su Sistema Operativo fue instalado con el idioma predeterminado a Español?${null}"

sleep .64

read input

ES="Si"

	if  [ "$input" = "$ES" ]  ; then
		Desktop=~/Escritorio
		else
		reset
		echo "${negritas}${azul}Se pondrà el icono de Minecraft en su carpeta personal${null}"
		sleep 3.2
		reset
		Desktop=~
	fi;
	
#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0)
	
	
echo "${negritas}${amarillo}Es posible que se le solicite su contraseña. Si es el caso, por favor tecleela${null}"

( touch $Secret/minecraft-offline )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( chmod +x $Secret/minecraft-offline ) > /dev/null 2>&1
( echo $Minecraft) > $Secret/minecraft-offline
( sudo mv $Secret/minecraft-offline -f /usr/bin/minecraft-offline ) > /dev/null 2>&1
( sudo mkdir /.guekho64 ) > /dev/null 2>&1
( sudo chmod -R 777 /.guekho64 ) > /dev/null 2>&1
( sudo mkdir /.guekho64/icons ) > /dev/null 2>&1
( sudo chmod -R 777 /.guekho64/icons) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files/
		
(wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-64x64x32.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon" ) > ~/.guekho64/minecraft/desktop_files/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft-offline.desktop -f ~/.local/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft-offline.desktop -f $Desktop/Minecraft-Offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

echo "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecleela${null}"

sudo mv $MinecraftHomeDesktop/minecraft-offline.desktop -f /usr/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
echo "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}"
reset


echo "
${azul}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
reset
		
echo "${amarillo}${negritas}Mi trabajo aquí, está hecho...${negritas}${subrayado}¡PERO ESPERA!${null}"
		sleep 3.2
echo "
${verde}${negritas}"Si quieres que algo salga bien, ¡Házlo tu mismo!" ${blanco}~Lema de guekho64~${null}"
		
echo "
${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo "
${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"

echo "
${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}"
		
echo "
${negritas}Bueno, ahora que has leído esto...¿Deseas Salir del Instalador? ${null}"
		
		read input
	
	yup="Si"

	if  [ "$input" = "$yup" ]  ; then
		reset
		sleep 2
echo "${blanco}Bye${null}"
		exit
		else
		echo "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola esta llena de colores...${null}"
		sleep 6.4
		echo "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 6.4
reset
		sleep 2
echo "${blanco}Bye${null}"
rm ~/.guekho64/minecraft/.secret/SOYOFFLINE > /dev/null 2>&1
		exit	
		fi;
	

) }

 Oficial () { ( 

#Copyright guekho64 © 2015 

#!/bin/bash
# Name: /tmp/demo.bash : 
# Purpose: Tell in what directory $0 is stored in
# Warning: Not tested for portability 
# ------------------------------------------------
 
## who am i? ##
_script="$(readlink -f ${BASH_SOURCE[0]})" > /dev/null 2>&1
 
## Delete last component from $_script ##
_base="$(dirname $_script)" > /dev/null 2>&1

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0)       

#Ejemplo:
#echo "${negritas}${cyan}Esta es mi propia prueba de color, pero no ${amarillo}amarillo, sino ${rojo}rojo...aunque bueno, es hora de apagar las luces...${null}"

cd ~

Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/original/Minecraft.jar"

Minecraft_Icon="[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft
Comment=¡Juega en un mundo totalmente abierto!
Icon=/.guekho64/icons/ml.ico
Exec=minecraft
Path=
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false"

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
MinecraftHomeOffline=~/.guekho64/minecraft/launchers/offline
Secret=~/.guekho64/minecraft/.secret

reset
echo "${negritas}${cyan}¿Su Sistema Operativo fue instalado con el idioma predeterminado a Español?${null}"

sleep .64

read input

ES="Si"

	if  [ "$input" = "$ES" ]  ; then
		Desktop=~/Escritorio
		else
		reset
		echo "${negritas}${azul}Se pondrà el icono de Minecraft en su carpeta personal${null}"
		sleep 3.2
		reset
		Desktop=~
	fi;
	
#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0)
	
	
echo "${negritas}${amarillo}Es posible que se le solicite su contraseña. Si es el caso, por favor tecleela${null}"

( touch $Secret/minecraft )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( chmod +x $Secret/minecraft ) > /dev/null 2>&1
( echo $Minecraft) > $Secret/minecraft
( sudo mv $Secret/minecraft -f /usr/bin/minecraft ) > /dev/null 2>&1
( sudo mkdir /.guekho64 ) > /dev/null 2>&1
( sudo chmod -R 777 /.guekho64 ) > /dev/null 2>&1
( sudo mkdir /.guekho64/icons ) > /dev/null 2>&1
( sudo chmod -R 777 /.guekho64/icons) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files/
		
(wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-256x256x8.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon" ) > ~/.guekho64/minecraft/desktop_files/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft.desktop -f ~/.local/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft.desktop -f $Desktop/Minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

echo "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecleela${null}"

sudo mv $MinecraftHomeDesktop/minecraft.desktop -f /usr/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
echo "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}"
reset


echo "
${azul}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
reset
		
echo "${amarillo}${negritas}Mi trabajo aquí, está hecho...${negritas}${subrayado}¡PERO ESPERA!${null}"
		sleep 3.2
echo "
${verde}${negritas}"Si quieres que algo salga bien, ¡Házlo tu mismo!" ${blanco}~Lema de guekho64~${null}"
		
echo "
${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo "
${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"

echo "
${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}"

rm ~/.guekho64/minecraft/.secret/SOYOFICIAL > /dev/null 2>&1
		
echo "
${negritas}Bueno, ahora que has leído esto...¿Deseas Salir del Instalador? ${null}"
		
		read input
	
	yup="Si"

	if  [ "$input" = "$yup" ]  ; then
		reset
		sleep 2
echo "${blanco}Bye${null}"
		exit
		else
		echo "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola esta llena de colores...${null}"
		sleep 6.4
		echo "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 6.4
reset
		sleep 2
echo "${blanco}Bye${null}"
		exit	
		fi;

) }

#Copyright guekho64 © 2015 

#!/bin/bash
# Name: /tmp/demo.bash : 
# Purpose: Tell in what directory $0 is stored in
# Warning: Not tested for portability 
# ------------------------------------------------
 
## who am i? ##
_script="$(readlink -f ${BASH_SOURCE[0]})" > /dev/null 2>&1
 
## Delete last component from $_script ##
_base="$(dirname $_script)" > /dev/null 2>&1

Basium="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" > /dev/null 2>&1

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0)       

#Ejemplo:
#echo "${negritas}${cyan}Esta es mi propia prueba de color, pero no ${amarillo}amarillo, sino ${rojo}rojo...aunque bueno, es hora de apagar las luces...${null}"

cd ~



echo "
${negritas}${blanco}				 ¡Hola!

${null}${negritas}Soy guekho64, el creador de este Script para Instalar Minecraft en Ubuntu Linux (O derivados).${null}${negritas}${amarillo}Este script puede instalar ${null}${negritas}${verde}un launcher de cada tipo juntos 
(Offline + Oficial) ${null}${negritas}${amarillo}. ${rojo}Si instalas más de un launcher Offline, el viejo 
launcher será reemplazado por el nuevo.${amarillo} Si por alguna razón necesitas 
desinstalar mi programa, por favor utiliza el script de ${null}${negritas}${morado}reseteado ${null}${negritas}${amarillo}para dejar tu computadora como antes, obviamente, sin Minecraft..."

sleep 12

echo "
${negritas}${rojo}Es importante que todo lo escribas correctamente tal y como se te pide en los 
cuadros de diálogo, incluyendo las letras Mayúsculas.${cyan}Igual toma en cuenta que al presionar ENTER sin escribir ninguna palabra, al presionar la combinación 
de teclas ${blanco}CTRL + C / CTRL + Z${cyan} o al escribir cualquier otra palabra que no sea de alguna de las opciones que se te presentan, ya sea ${azul}"Si" ${cyan}o ${verde}"No" ${cyan}, ${rojo}sin la "S" y la "N" 
Mayúsculas${rojo}, ${amarillo}el programa automáticamente se cerrará${null}"

sleep 12

echo "
${negritas}${azul}		    Probando la conexiòn a${null} ${negritas}${verde}Internet${azul}... ${null}  "
	
	sleep 6.4
( ping -c 4 www.google.com.mx ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	echo "${negritas}Al parecer usted no esta conectado a Internet${null}";
	sleep 3.2
	reset
	echo "${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
		sleep 3.2
		exit
else
reset
echo "${verde}${negritas}Al parecer esta usted conectado a Internet${null}"
sleep 3.2
reset
		fi;
	
((exec mkdir ~/.guekho64) && (exec mkdir ~/.guekho64/minecraft) && (exec mkdir ~/.guekho64/minecraft/launchers)&& (exec mkdir ~/.guekho64/minecraft/launchers/original) && (exec mkdir ~/.guekho64/minecraft/launchers/offline) && (exec mkdir ~/.guekho64/minecraft/icons) && (exec mkdir ~/.guekho64/minecraft/desktop_files) && (exec mkdir ~/.guekho64/minecraft/.secret) && (exec mkdir ~/.local/share/applications/ ) ) > /dev/null 2>&1

sleep .64

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
MinecraftHomeOffline=~/.guekho64/minecraft/launchers/offline
MinecraftHomeIcons=~/.guekho64/minecraft/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files
Secret=~/.guekho64/minecraft/.secret

echo "${negritas}${blanco}¿Deseas Utilizar el Launcher de Minecraft Oficial?${null}"
echo "
${negritas}${cyan}Bug: Por favor no presione ${morado}ENTER${cyan} ni escriba otra cosa fuera de ${verde}Si o ${rojo}No${cyan},pues no 
cerrará el programa, sino que se omitirá esta parte y no podrá elegir su launcher preferido${null}"
read input
	
	yup="Si"
	nope="No"
	
	if  [ "$input" = "$yup" ]  ; then
		reset
		mkdir ~/.guekho64/minecraft/.secret > /dev/null 2>&1
		touch ~/.guekho64/minecraft/.secret/SOYOFICIAL > /dev/null 2>&1
		(wget --directory-prefix=$MinecraftHomeOriginal https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}Se ha descargado el Launcher correctamente${null}"
sleep 3.2
		fi;
	fi
		
	if  [ "$input" = "$nope" ]  ; then
		reset
		echo "${negritas}${verde}Normalmente el Link del launcher se obtiene desde la sección de descargas de su navegador web, una vez que ha descargado el launcher manualmente primero.Después de esto, vaya a las descargas dé click derecho a la descarga, para luego copiar el link de donde fue descargado${null}"
		echo "
${negritas}${cyan}Por favor pega la URL de tu Launcher preferido de Minecraft a continuación:${null}"
		read input
		(wget --no-check-certificate --directory-prefix=$MinecraftHomeOffline $input -O $MinecraftHomeOffline/Minecraft.jar) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
reset
mkdir ~/.guekho64/minecraft/.secret > /dev/null 2>&1
touch $Secret/SOYOFFLINE > /dev/null 2>&1
echo "${verde}${negritas}Se ha descargado el Launcher correctamente${null}"
sleep 3.2
fi;
	fi
	
	
reset
echo "${negritas}${verde}Ahora procederé a instalar las dependencias necesarias para la instalación de 
Minecraft, además de alguno que otro parche para garantizar la correcta 
funcionalidad de las fuentes${null}"
sleep 3.2
echo "
${negritas}${azul}Estos repositorios de programas son ajenos a los repositorios oficiales de 
Ubuntu y a mi, por lo que ${rojo}no me hago responsable de cualquier daño a su 
computadora.${azul} Aunque esta advertencia es un poco exagerada, es siempre necesaria ponerla, aunque, por experiencia propia, les puedo asegurar estos repositorios 
${blanco}JAMÁS ${azul}me han dado problema alguno ${null}"
echo "
${negritas}${amarillo}¿Seguro que quieres continuar?${null}"
read input
	if  [ "$input" = "$yup" ]  ; then
		reset
		echo "${blanco}${negritas}Por favor introduzca su contraseña para hacer los cambios requeridos${null}"

reset
echo "${negritas}${cyan}Trabajando. Esto puede llevarse un tiempo, asì que sea paciente...${null}"
		( (sudo apt-add-repository ppa:no1wantdthisname/openjdk-fontfix -y) && (sudo apt-add-repository ppa:no1wantdthisname/ppa -y) && (sudo apt update) && (sudo apt install fontconfig-infinality openjdk-8-jre -y) ) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
reset
echo "${verde}${negritas}¡Se han instalado las dependencias y parches correctamente!${null}"
sleep 3.2
fi;
		else
		reset
		echo "${rojo}${negritas}Saliendo...${null}"
		sleep 3.2
		exit
	fi

reset
echo "${negritas}${amarillo}Ahora solo seleccione el tipo de fuente que le gustaría tener. 
Personalmente recomiendo el estilo 4 (osx)${null}"
sudo bash /etc/fonts/infinality/infctl.sh setstyle
reset
echo "${negritas}${azul}Ahora espere un momento, estaré configurando su espacio de trabajo...${null}"

(

( touch $MinecraftHomeDesktop/minecraft.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x ~/.guekho64/minecraft/desktop_files/minecraft.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

)

(

( touch $MinecraftHomeDesktop/minecraft-offline.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x ~/.guekho64/minecraft/desktop_files/minecraft-offline.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

)


reset
sleep 3.2
echo "${negritas}${blanco}Cargando...${null}";
sleep 2
reset

( cat ~/.guekho64/minecraft/.secret/SOYOFICIAL ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
( cat ~/.guekho64/minecraft/.secret/SOYOFFLINE ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
echo "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}Al parecer usted seleccionò el Modo de Launcher: Offline${null}"
sleep 3.2
Offline
fi
	else
	echo "${verde}${negritas}Al parecer usted seleccionò el Modo de Launcher: Oficial${null}"
	sleep 3.2
	Oficial
fi;



) }

#Copyright guekho64 © 2015 

#!/bin/bash
# Name: /tmp/demo.bash : 
# Purpose: Tell in what directory $0 is stored in
# Warning: Not tested for portability 
# ------------------------------------------------
 
## who am i? ##
_script="$(readlink -f ${BASH_SOURCE[0]})" > /dev/null 2>&1
 
## Delete last component from $_script ##
_base="$(dirname $_script)" > /dev/null 2>&1

Basium="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" > /dev/null 2>&1

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0)       

#Ejemplo:
#echo "${negritas}${cyan}Esta es mi propia prueba de color, pero no ${amarillo}amarillo, sino ${rojo}rojo...aunque bueno, es hora de apagar las luces...${null}"

echo "
         ${negritas}${verde}Launcher del Script Beta de ${cyan}guekho64${verde} para instalar Minecraft${null}"

sleep 2

echo "
${negritas}${blanco}Para más información, visite el canal de YouTube de guekho64, donde se explica 
paso a paso el uso de este script: ${negritas}${cyan}https://www.youtube.com/user/guekho64 ${null}"

sleep 2

echo "
${negritas}${azul}		       	    ¿Qué desea hacer?${null}  "
	echo "
	
${negritas}¿Instalar Minecraft?${null} ${negritas}o${null} ${negritas}${amarillo}¿Resetear el Script de Instalación?${null}  "
echo "${negritas}${blanco}Escriba ${morado}"Instalar" ${blanco}o ${rojo}"Resetear"${blanco}, según sea el caso${null}"
echo "${negritas}${blanco}Para salir presione ${subrayado}${amarillo}${negritas}ENTER${null}${negritas}${blanco}...${null}"
	read input
	
	yup="Instalar"
	nope="Resetear"

	if  [ "$input" = "$yup" ]  ; then
		reset
		echo "${negritas}${verde}Iniciando Instalador de Minecraft...${null}"
		sleep 3.2
		reset
		Instalador
		reset
	fi
	
	if  [ "$input" = "$nope" ]  ; then
		reset
		echo "${negritas}${rojo}Reseteando Archivos del Instalador de Minecraft...${null}"
		sleep 3.2
		rm -R ~/.guekho64 > /dev/null 2>&1
		rm ~/.local/share/applications/minecraft.desktop > /dev/null 2>&1
		rm ~/.local/share/applications/minecraft-offline.desktop > /dev/null 2>&1
		echo "
${negritas}${cyan}Introduzca su contraseña para continuar:${null}"
		sudo rm /usr/share/applications/minecraft.desktop > /dev/null 2>&1
		sudo rm /usr/share/applications/minecraft-offline.desktop > /dev/null 2>&1
		sudo rm /usr/bin/minecraft > /dev/null 2>&1
		sudo rm /usr/bin/minecraft-offline > /dev/null 2>&1
		sudo rm ~/Escritorio/Minecraft-Offline.desktop > /dev/null 2>&1
		sudo rm ~/Escritorio/Minecraft.desktop > /dev/null 2>&1
		sudo rm ~/Escritorio/minecraft-offline.desktop > /dev/null 2>&1
		sudo rm ~/Escritorio/Minecraft-offline.desktop > /dev/null 2>&1
		sudo rm ~/Escritorio/minecraft-Offline.desktop > /dev/null 2>&1
		sudo rm ~/Escritorio/Minecraft-Offline.desktop > /dev/null 2>&1
		sudo rm ~/Escritorio/minecraft.desktop > /dev/null 2>&1
		sudo rm ~/Desktop/Minecraft-Offline.desktop > /dev/null 2>&1
		sudo rm ~/Desktop/Minecraft.desktop > /dev/null 2>&1
		sudo rm ~/Minecraft-Offline.desktop > /dev/null 2>&1
		sudo rm ~/Minecraft.desktop > /dev/null 2>&1
		sudo rm ~/minecraft-offline.desktop > /dev/null 2>&1
		sudo rm ~/minecraft-Offline.desktop > /dev/null 2>&1
		sudo rm ~/Minecraft-offline.desktop > /dev/null 2>&1
		sudo rm ~/minecraft.desktop > /dev/null 2>&1
		sudo rm -R /.guekho64/ > /dev/null 2>&1
		
		reset
		echo "${negritas}${blanco}¿Te gustaría borrar tu carpeta .minecraft${null}"
		read input
	
		yup="Si"

		if  [ "$input" = "$yup" ]  ; then
		reset
		rm -R ~/.minecraft > /dev/null 2>&1
	else
		reset
		echo "${negritas}${verde}Tu carpeta .minecraft está intacta${null}"
		sleep 6.4
		reset
	fi
		echo "${negritas}${amarillo}Ya solo borre manualmente los iconos que puedan haber en su escritorio, o en 
su folder personal${null}"
		echo "
			${negritas}${verde}Para salir presione ${subrayado}${azul}${negritas}ENTER${null}${negritas}${verde}...${null}"
		
		read input
	
		yup="Nope"

		if  [ "$input" = "$yup" ]  ; then
		reset
		echo "${negritas}${blanco}¡LOL!, ${amarillo}¿Cómo supiste que ${cyan}palabra ${amarillo}poner? ${negritas}${verde}~${null}${negritas}${azul}Easter Egg${null}${negritas}${verde}~${null}"
		echo "${negritas}${morado}Bueno, ahora que ya lo sabes, espera a que me cierre por mi mismo...${null}"
		sleep 6.4
	else
		exit
	fi
	fi


) }

Casa="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" > /dev/null 2>&1

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)       
rojo=$(tput setaf 1)    
verde=$(tput setaf 2)    
amarillo=$(tput setaf 3)    
azul=$(tput setaf 4)   
morado=$(tput setaf 5)    
cyan=$(tput setaf 6)    
blanco=$(tput setaf 7)    
null=$(tput sgr0) 
reset
echo "${negritas}${amarillo}Por favor introduzca su contraseña.Es normal que no se vea,pero si esta 
escribiendo${null}"

( sudo chmod go-w ~/.Acepto.txt ) > /dev/null 2>&1
reset
echo "${negritas}${cyan}Trabajando...${null}"
(sudo apt-add-repository ppa:xubuntu-dev/xfce-4.12 -y && sudo apt update && sudo apt install xfce4-terminal -y ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	echo "${negritas}${rojo}Ha ocurrido un error en la instalación del programa. Saliendo...${null}";
	sleep 2
	exit
fi;
reset
Launcher
rm ~/nohup.out > /dev/null 2>&1
reset


)  }

#Define variables de colores:
subrayado=$(tput sgr 0 1)    
negritas=$(tput bold)   
null=$(tput sgr0)      

## who am i? ##
Casa="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" > /dev/null 2>&1

Home=~ > /dev/null 2>&1
 
## Delete last component from $Casa ##
Raiz="$(dirname $Casa)"

Acepto="Yo acepté la licencia y los términos de uso del Instalador de Minecraft por guekho64"

echo "${negritas}Recuerda: Cualquier cosa que ande mal, o algùn comentario que quisiera mandar, 
favor de envìar a: guekho64@gmail.com${null}"
sleep 8
reset
echo "${negritas}Probando conexiòn a Internet...${null}"
( ping -c 4 www.google.com.mx ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	echo "${negritas}Al parecer usted no esta conectado a Internet${null}";
	sleep 3.2
	reset
	echo "${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
		sleep 3.2
		exit
else
reset
echo "${verde}${negritas}Al parecer esta usted conectado a Internet${null}"
sleep 3.2
reset
		fi;
reset
echo "${negritas}Por favor acepte primero la licencia con los términos de uso para declarar que 
está usted de acuerdo${null}"
sleep 6.4

(

cat ~/.Acepto.txt > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	echo "
${negritas}¿Acepta usted la licencia y sus respectivos términos de uso?${null}"
sleep 2

xdg-open $Casa/LICENCIA.txt > /dev/null 2>&1

read input
	
	yup="Si"

	if  [ "$input" = "$yup" ]  ; then
		( touch ~/.Acepto.txt )
		( printf "$Acepto" ) > ~/.Acepto.txt
		( chmod 444 ~/.Acepto.txt )
		Arranque
		else
		reset
		echo "${negritas}Ya que usted no ha aceptado la licencia y los términos de uso, el instalador no puede continuar${null}"
		sleep 3.2
		exit
	fi
	else
	echo "
${negritas}Al parecer usted ya ha aceptado anteriormente la licencia y los términos de uso y el instalador puede continuar${null}"
	sleep 3.2
	( ( printf "$Acepto" ) > ~/.Acepto.txt ) > /dev/null 2>&1
	( chmod 444 ~/.Acepto.txt ) > /dev/null 2>&1
	Arranque
	fi;
)
