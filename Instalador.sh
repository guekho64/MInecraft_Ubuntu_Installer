#!/bin/bash
#Copyright guekho64 © 2016

#Zona Especial

reset

MyMessage="Instalador de Minecraft de guekho64 © 2016"
Uninstall="Desinstalación de Minecraft Completada"

Inexistente="Inexistente"
Inactivo="Inactivo"
Activo="Activo"

#Universal Functions
function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

#Universal

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

ENTERPRESS="${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}"

desktopVar=$(cat ~/.config/user-dirs.dirs | grep "XDG_DESKTOP_DIR")
desktopFolder=$(echo ${desktopVar/XDG_DESKTOP_DIR=/""} | tr -d '"')

DeskFolder=${desktopFolder:6}

DesktopFolder=$(echo ~/$DeskFolder)


#I don't even recall if this still works...
pkill mintupdate

 function Arranque  { (

 function Launcher { ( 

 function Instalador { (
 
    function Offline { ( 
 
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

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.28
        exit
    else
        Minecraft="exec /usr/lib/jvm/java-7-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"
fi;
else
Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"
fi;

Minecraft_Icon="[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Offline
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=/.guekho64/icons/ml.ico
Exec=minecraft-offline
Path=
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false"

MinecraftHomeOffline=~/.guekho64/minecraft/launchers/offline
Secret=~/.guekho64/minecraft/.secret

reset


function Menu_Nv8 {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${cyan}¿Desea colocar un ícono de Minecraft en su escritorio?${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv8="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv8="No"&& sleep 1.64 && reset;;
  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv8

	if  [ "$Rspta_Nv8" = "Si" ]  ; then
		Desktop=$DesktopFolder
    elif  [ "$Rspta_Nv8" = "No" ]  ; then
        reset
		echo "${negritas}${azul}Se pondrà el icono de Minecraft en su carpeta personal${null}"
		sleep 3.28
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.28
	    exit
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

	
function SettingEnvironment {

( touch $Secret/minecraft-offline )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( chmod +x $Secret/minecraft-offline ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( echo $Minecraft) > $Secret/minecraft-offline
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

hcentro "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( sudo mv $Secret/minecraft-offline -f /usr/bin/minecraft-offline ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo mkdir /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo mkdir /.guekho64/icons ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64/icons) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files
		
rm $MinecraftHomeIcons/* ; (wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-64x64x32.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon" ) > $MinecraftHomeDesktop/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x $MinecraftHomeDesktop/minecraft-offline.desktop ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft-offline.desktop -f ~/.local/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft-offline.desktop -f $Desktop/"Minecraft Offline.desktop"
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

sudo mv $MinecraftHomeDesktop/minecraft-offline.desktop -f /usr/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

}

SettingEnvironment

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}" ; sleep 1.64
fi;

reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat ~/"Minecraft Offline.desktop"
if [ $? -ne 0 ]; then 
	cat "$Desktop/Minecraft Offline.desktop"
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.28
            exit
        else
            Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu directorio personal o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; echo ""
sleep 2.46
hcentro "$ENTERPRESS"
read

reset
		
hcentro "${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
echo ""
echo "${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo ""
echo "${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
echo ""
echo "${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}" && notify-send -i "/.guekho64/icons/ml.ico" $MyMessage
echo ""
hcentro "${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
read input

	yup="Nope"

	if  [ "$input" = "$yup" ]  ; then
        reset
		hcentro "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola está llena de colores...${null}"
		sleep 3.28
		hcentro "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 3.28
        reset
		sleep 1.64
        hcentro "${negritas}${blanco}Bye${null}"
        rm -R ~/.guekho64/minecraft/.secret/ > /dev/null 2>&1
		exit	
		else
        reset
		sleep 1.64
        hcentro "${blanco}Bye${null}"
		exit
        fi;
	

) }

    function Oficial { ( 
 
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

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.28
        exit
    else
        Minecraft="exec /usr/lib/jvm/java-7-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/original/Minecraft.jar"
fi;
else
Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/original/Minecraft.jar"
fi;

Minecraft_Icon_Premium="[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=/.guekho64/icons/ml.ico
Exec=minecraft
Path=
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false"

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
Secret=~/.guekho64/minecraft/.secret

reset


function Menu_Nv8-Premium {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${cyan}¿Desea colocar un ícono de Minecraft en su escritorio?${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv8Premium="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv8Premium="No"&& sleep 1.64 && reset;;
  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv8-Premium

	if  [ "$Rspta_Nv8Premium" = "Si" ]  ; then
		Desktop=$DesktopFolder
    elif  [ "$Rspta_Nv8Premium" = "No" ]  ; then
        reset
		echo "${negritas}${azul}Se pondrà el icono de Minecraft en su carpeta personal${null}"
		sleep 3.28
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.28
	    exit
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
	

function SettingEnvironment-Premium {

( touch $Secret/minecraft )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( chmod +x $Secret/minecraft ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( echo $Minecraft) > $Secret/minecraft
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

hcentro "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( sudo mv $Secret/minecraft -f /usr/bin/minecraft ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo mkdir /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo mkdir /.guekho64/icons ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64/icons) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files
		
rm $MinecraftHomeIcons/* ; (wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-64x64x32.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon_Premium" ) > $MinecraftHomeDesktop/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x $MinecraftHomeDesktop/minecraft.desktop ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft.desktop -f ~/.local/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft.desktop -f $Desktop/"Minecraft.desktop"
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

sudo mv $MinecraftHomeDesktop/minecraft.desktop -f /usr/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

}

SettingEnvironment-Premium
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}" ; sleep 1.64
fi ;

reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat ~/Minecraft.desktop
if [ $? -ne 0 ]; then 
	cat $Desktop/Minecraft.desktop
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.28
            exit
        else
        Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu directorio personal o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; echo ""
sleep 2.46
hcentro "$ENTERPRESS"
read


reset
		
hcentro "${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
echo ""
echo "${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo ""
echo "${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
echo ""
echo "${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}" && notify-send -i "/.guekho64/icons/ml.ico" $MyMessage
echo ""
hcentro "${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
read input

	yup="Nope"

	if  [ "$input" = "$yup" ]  ; then
        reset
		hcentro "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola está llena de colores...${null}"
		sleep 3.28
		hcentro "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 3.28
        reset
		sleep 1.64
        hcentro "${negritas}${blanco}Bye${null}"
        rm -R ~/.guekho64/minecraft/.secret/ > /dev/null 2>&1
		exit	
		else
        reset
		sleep 1.64
        hcentro "${blanco}Bye${null}"
		exit
        fi;
	

) }

    function Ambos { ( 
 
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

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.28
        exit
    else
        Minecraft="exec /usr/lib/jvm/java-7-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/original/Minecraft.jar"
fi;
else
Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/original/Minecraft.jar"
fi;

Minecraft_Icon_Premium="[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=/.guekho64/icons/ml.ico
Exec=minecraft
Path=
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false"


Minecraft_Icon="[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Offline
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
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


function Menu_Nv8-Both {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${cyan}¿Desea colocar los íconos de Minecraft en su escritorio?${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv8Both="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv8Both="No"&& sleep 1.64 && reset;;
  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv8-Both

	if  [ "$Rspta_Nv8Both" = "Si" ]  ; then
		Desktop=$DesktopFolder
    elif  [ "$Rspta_Nv8Both" = "No" ]  ; then
        reset
		echo "${negritas}${azul}Se pondràn los iconos de Minecraft en su carpeta personal${null}"
		sleep 3.28
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.28
	    exit
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

	
function SettingEnvironment-Offline {

( touch $Secret/minecraft-offline )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( chmod +x $Secret/minecraft-offline ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( echo $Minecraft) > $Secret/minecraft-offline
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

hcentro "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( sudo mv $Secret/minecraft-offline -f /usr/bin/minecraft-offline ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo mkdir /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo mkdir /.guekho64/icons ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64/icons) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files
		
( printf "$Minecraft_Icon" ) > $MinecraftHomeDesktop/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x $MinecraftHomeDesktop/minecraft-offline.desktop ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft-offline.desktop -f ~/.local/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft-offline.desktop -f $Desktop/"Minecraft Offline.desktop"
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

sudo mv $MinecraftHomeDesktop/minecraft-offline.desktop -f /usr/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

}
function SettingEnvironment-Premium {

( touch $Secret/minecraft )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( chmod +x $Secret/minecraft ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( echo $Minecraft) > $Secret/minecraft
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

hcentro "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( sudo mv $Secret/minecraft -f /usr/bin/minecraft ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64 ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
( sudo chmod -R 777 /.guekho64/icons) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files
		
rm $MinecraftHomeIcons/* ; (wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-64x64x32.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon_Premium" ) > $MinecraftHomeDesktop/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x $MinecraftHomeDesktop/minecraft.desktop ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft.desktop -f ~/.local/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft.desktop -f $Desktop/"Minecraft.desktop"
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

sudo mv $MinecraftHomeDesktop/minecraft.desktop -f /usr/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

}

SettingEnvironment-Offline

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
sleep 3.28
SettingEnvironment-Premium
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Instalado con Éxito el Launcher Premium!${null}" ; sleep 3.28 ; reset
fi;
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Instalado con Éxito el Launcher Offline!${null}" ; sleep 3.28 ; reset
fi;

reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat ~/"Minecraft Offline.desktop"
if [ $? -ne 0 ]; then 
	cat "$Desktop/Minecraft Offline.desktop"
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.28
            exit
        else
            Aviso="${verde}${negritas}Podrás encontrar los íconos de Minecraft en tu escritorio o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar los íconos de Minecraft en tu directorio personal o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; echo ""
sleep 2.46
hcentro "$ENTERPRESS"
read

reset
		
hcentro "${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
echo ""
echo "${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo ""
echo "${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
echo ""
echo "${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}" && notify-send -i "/.guekho64/icons/ml.ico" $MyMessage
echo ""
hcentro "${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
read input

	yup="Nope"

	if  [ "$input" = "$yup" ]  ; then
        reset
		hcentro "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola está llena de colores...${null}"
		sleep 3.28
		hcentro "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 3.28
        reset
		sleep 1.64
        hcentro "${negritas}${blanco}Bye${null}"
        rm -R ~/.guekho64/minecraft/.secret/ > /dev/null 2>&1
		exit	
		else
        reset
		sleep 1.64
        hcentro "${blanco}Bye${null}"
		exit
        fi;
	

) }
 
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


echo ""
hcentro "${negritas}${blanco}¡Hola!${null}"
echo ""
hcentro "${null}${negritas}Soy guekho64,el creador de este Script para Instalar Minecraft en Ubuntu${null}"
echo ""
hcentro "${negritas}${amarillo}Este script puede instalar ${null}${negritas}${verde}un launcher de cada tipo juntos (Offline + Oficial) ${null}"
echo ""
hcentro "${negritas}${cyan}Si instalas más de un launcher Offline,el viejo launcher será reemplazado por el nuevo${null}"
echo ""
hcentro "${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}" ;
read ;
reset ;

hcentro "${negritas}${azul}Probando la conexiòn a ${negritas}${verde}Internet${negritas}${azul}...${null}"
( ping -c 4 www.google.com.mx ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	hcentro "${negritas}Al parecer usted no está conectado a Internet${null}";
	sleep 3.28
	reset
	hcentro "${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
		sleep 3.28
		exit
else
reset
hcentro "${verde}${negritas}Al parecer está usted conectado a Internet${null}"
sleep 3.28
reset
		fi;
	
mkdir -p ~/.guekho64/minecraft/launchers/original > /dev/null 2>&1
mkdir -p ~/.guekho64/minecraft/launchers/offline > /dev/null 2>&1
mkdir -p ~/.guekho64/minecraft/icons > /dev/null 2>&1
mkdir -p ~/.guekho64/minecraft/desktop_files > /dev/null 2>&1
mkdir -p ~/.guekho64/minecraft/.secret > /dev/null 2>&1
mkdir -p ~/.local/share/applications > /dev/null 2>&1

sleep .64

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
MinecraftHomeOffline=~/.guekho64/minecraft/launchers/offline
MinecraftHomeIcons=~/.guekho64/minecraft/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files
Secret=~/.guekho64/minecraft/.secret

reset
hcentro "${negritas}${blanco}A continuación podrás elegir que Launchers se descargarán${null}"
echo ""
hcentro "${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}" ;
read

reset

function menu_launcher {

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

# Special Base
options=("${negritas}${amarillo}Premium"${null} ${negritas}${verde}"Offline"${null})

function menu {
    hcentro "${negritas}${blanco}Opciones Disponibles:${null}"
    echo ""
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices[i]:- }" "${options[i]}"
    done
    [[ "$msg" ]] && echo "$msg"; :
}

mensaje="${negritas}${blanco}
Al elegir dos veces una opción, está será desmarcada${null}

${negritas}${verde}Presione ${cyan}${negritas}ENTER ${verde}${negritas}al terminar${null}

${negritas}Seleccione una opción:${null}"

function Read_Function {
read -rp "$mensaje" num
}

Rd_Fctn=Read_Function

while menu && $Rd_Fctn && Ko=$num && reset && [[ "$num" ]]  ; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="${negritas}${rojo}
Opción Inválida: $num${null}"; continue; }
    ((num--)); msg=""
    [[ "${choices[num]}" ]] && choices[num]="" || choices[num]="${negritas}${blanco}*${null}"
done

( printf "${negritas}${amarillo}Marcadas:${null}" ; msg=" ${negritas}${blanco}Ninguna${null}" ) > /dev/null 2>&1

function Final_Message {
for i in ${!options[@]}; do 
    [[ "${choices[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done 
}

Final_Message > /dev/null 2>&1


Fnl_Mssg=$(Final_Message)
reset

#Functions
function Extracto_Offline {
( echo $Fnl_Mssg |  grep -o 'Offline["]*' ) > /dev/null 2>&1
}

function Extracto_Premium {
( echo $Fnl_Mssg |  grep -o 'Premium["]*' ) > /dev/null 2>&1
}

function Extracto_Ambos {
( echo $Fnl_Mssg | grep -oe 'Premium["]*' -oe 'Offline["]*' ) > /dev/null 2>&1
}
#More Functions
function SOY_OFICIAL {
reset
		mkdir ~/.guekho64/minecraft/.secret > /dev/null 2>&1
		touch ~/.guekho64/minecraft/.secret/SOYOFICIAL > /dev/null 2>&1
    rm "$MinecraftHomeOriginal/*"
		(wget --directory-prefix=$MinecraftHomeOriginal https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
hcentro "${verde}${negritas}Se ha descargado el Launcher Oficial correctamente${null}"
sleep 3.28
		fi;
        
}

function SOY_OFFLINE {

reset
		hcentro "${negritas}${verde}Normalmente el Link del launcher se obtiene desde la sección de descargas de su navegador web, una vez que ha descargado el launcher manualmente primero.Después de esto, vaya a las descargas dé click derecho a la descarga, para luego copiar el link de donde fue descargado${null}"
        echo ""
        hcentro "${negritas}${rojo}ADVERTENCIA:${null} ${negritas}${blanco}No pulse Control + C para pegar texto,pues eso cerrará el programa${null}"
        echo ""
        hcentro "${negritas}${amarillo}En su lugar, dé click derecho a la terminal y seleccione "Pegar"${null}"
        echo ""
        rm $MinecraftHomeOffline/*
		echo "${negritas}${cyan}Por favor pega la URL de tu Launcher preferido de Minecraft a continuación:${null}"
		read input
		(wget --no-check-certificate --directory-prefix=$MinecraftHomeOffline $input -O $MinecraftHomeOffline/Minecraft.jar) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
reset
mkdir ~/.guekho64/minecraft/.secret > /dev/null 2>&1
touch $Secret/SOYOFFLINE > /dev/null 2>&1
hcentro "${verde}${negritas}Se ha descargado el Launcher Offline correctamente${null}"
sleep 3.28
fi;

}

function SOY_AMBOS {

reset
		mkdir ~/.guekho64/minecraft/.secret > /dev/null 2>&1
		touch ~/.guekho64/minecraft/.secret/SOYAMBOS > /dev/null 2>&1
		(wget --directory-prefix=$MinecraftHomeOriginal https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
hcentro "${verde}${negritas}Se ha descargado el Launcher Oficial correctamente${null}"
sleep 3.28
reset
hcentro "${amarillo}${negritas}Ahora procederé a descargar el Launcher Offline${null}"
sleep 3.28
reset
		hcentro "${negritas}${verde}Normalmente el Link del launcher se obtiene desde la sección de descargas de su navegador web, una vez que ha descargado el launcher manualmente primero.Después de esto, vaya a las descargas dé click derecho a la descarga, para luego copiar el link de donde fue descargado${null}"
        echo ""
        hcentro "${negritas}${rojo}ADVERTENCIA:${null} ${negritas}${blanco}No pulse Control + C para pegar texto,pues eso cerrará el programa${null}"
        echo ""
        hcentro "${negritas}${amarillo}En su lugar, dé click derecho a la terminal y seleccione "Pegar"${null}"
        echo ""
		echo "${negritas}${cyan}Por favor pega la URL de tu Launcher preferido de Minecraft a continuación:${null}"
		read input
		(wget --no-check-certificate --directory-prefix=$MinecraftHomeOffline $input -O $MinecraftHomeOffline/Minecraft.jar) > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
reset
hcentro "${verde}${negritas}Se ha descargado el Launcher Offline correctamente${null}"
sleep 3.28
fi;
		fi;

}

Ext_O=$(Extracto_Offline)
Ext_P=$(Extracto_Premium)
Ext_A1=$(Extracto_Ambos)

Ext_A=$(echo $Ext_A1)

# Special Base

if  [ "$Ext_A" = "Premium Offline" ]  ; then
        echo "${negritas}${blanco}"Ambos"${null}"
        sleep 1.64
        reset
        SOY_AMBOS
elif [ "$Ext_O" = "Offline" ]  ; then
        echo "${negritas}${verde}"Offline"${null}"
        sleep 1.64
        reset
        SOY_OFFLINE
elif [ "$Ext_P" = "Premium" ]  ; then
        echo "${negritas}${amarillo}"Premium"${null}"
        sleep 1.64
        reset
        SOY_OFICIAL
        else
hcentro "${rojo}${negritas}No seleccionó ningún tipo de Launcher${null}"
sleep 3.28
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
reset
echo "${rojo}${negritas}Saliendo...${null}"
sleep 1.6
exit
	fi
    
}

menu_launcher
	
reset
hcentro "${negritas}${verde}Ahora voy a instalar las dependencias para la instalación de Minecraft${null}"
hcentro "${negritas}${verde}además de alguno que otro parche para la correcta funcionalidad de las fuentes${null}"
sleep 3.28
echo ""
hcentro "${negritas}${azul}Estos repositorios de programas${null}"
hcentro "${negritas}${azul}no pertenecen a los repositorios oficiales de Ubuntu ni a mi${null}"
hcentro "${negritas}${azul}por lo que ${amarillo}no me hago responsable de cualquier daño a su computadora${null}"
hcentro "${negritas}${azul}Si a alguien le sirve de alivio, por experiencia propia${null}"
hcentro "${negritas}${azul}le puedo asegurar que estás fuentes externas de programas ${negritas}${blanco}JAMÁS${null}"
hcentro "${negritas}${azul}me han dado problema alguno a mí, aunque claro, cada PC es diferente${null}"
hcentro "${negritas}${azul}y por lo tanto puede haber reacciones secundarias buenas o malas${null}"
echo ""



function Menu_Nv6 {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${amarillo}¿Seguro que quieres continuar?${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv6="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv6="No"&& sleep 1.64 && reset;;

  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv6

if  [ "$Rspta_Nv6" = "Si" ]  ; then
		reset
		echo "${blanco}${negritas}Por favor introduzca su contraseña para hacer los cambios requeridos${null}"
        sudo echo ""
        reset
        hcentro "${negritas}${cyan}Trabajando. Esto llevará tiempo${null}"
        echo ""
        hcentro "${negritas}${verde}Si tienes las notificaciones activadas,serás notificado cuando esto termine ${null}"
        sudo pkill synaptic > /dev/null 2>&1
        sudo apt-get clean > /dev/null 2>&1
        
        function Anti_PPA {

PPA="/etc/apt/sources.list.d/no1wantdthisname-openjdk-fontfix-*.list"

cat $PPA > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    Estado_PPA_no1wantdthisname_openjdk=Inexistente
else
  
string=$(cat $PPA)
set -- $string
Anti_PPA_Result=$(echo $1)
fi;
}
        function Anti_PPA2 {

echo $Anti_PPA_Result | grep "#" > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    
    Estado_PPA_no1wantdthisname_openjdk=Activo
else
Estado_PPA_no1wantdthisname_openjdk=Inactivo
fi;


echo $Estado_PPA_no1wantdthisname_openjdk

}

        Anti_PPA

        if [ $Estado_PPA_no1wantdthisname_openjdk = $Inexistente ]  > /dev/null 2>&1 ; then
        ( (sudo apt-add-repository ppa:no1wantdthisname/openjdk-fontfix -y) ) > /dev/null 2>&1
        else
        Anti_PPA2
        if [ $Estado_PPA_no1wantdthisname_openjdk = $Inactivo ]  > /dev/null 2>&1 ; then
        Fixed_PPA_no1wantdthisname_openjdk=$(cat $PPA | sed '$d' | sed "s/#//")
        sudo chmod 777 $PPA
        sudo echo $Fixed_PPA_no1wantdthisname_openjdk > $PPA
        sudo chmod 444 $PPA
        if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	      hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	      sleep 3.28
	      exit
        else
        echo "" > /dev/null 2>&1
        fi
        elif [ $Estado_PPA_no1wantdthisname_openjdk = $Activo ]  > /dev/null 2>&1 ; then
        echo "" > /dev/null 2>&1
        fi
        fi
        
        function Anti_PPA_a {

PPA_a="/etc/apt/sources.list.d/no1wantdthisname-ppa-*.list"

cat $PPA_a > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    Estado_PPA_no1wantdthisname=Inexistente
else
  
string=$(cat $PPA_a)
set -- $string
Anti_PPA_a_Result=$(echo $1)
fi;
}
        function Anti_PPA_a2 {

echo $Anti_PPA_a_Result | grep "#" > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    
    Estado_PPA_no1wantdthisname=Activo
else
Estado_PPA_no1wantdthisname=Inactivo
fi;


echo $Estado_PPA_no1wantdthisname

}

        Anti_PPA_a

        if [ $Estado_PPA_no1wantdthisname = $Inexistente ]  > /dev/null 2>&1 ; then
        ( (sudo apt-add-repository ppa:no1wantdthisname/ppa -y) ) > /dev/null 2>&1
        else
        Anti_PPA_a2
        if [ $Estado_PPA_no1wantdthisname = $Inactivo ]  > /dev/null 2>&1 ; then
        Fixed_PPA_a_no1wantdthisname=$(cat $PPA_a | sed '$d' | sed "s/#//")
        sudo chmod 777 $PPA_a
        sudo echo $Fixed_PPA_a_no1wantdthisname > $PPA_a
        sudo chmod 444 $PPA_a
        if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	      hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	      sleep 3.28
	      exit
        else
        echo "" > /dev/null 2>&1
        fi
        elif [ $Estado_PPA_no1wantdthisname = $Activo ]  > /dev/null 2>&1 ; then
        echo "" > /dev/null 2>&1
        fi
        fi
        
        sudo apt update > /dev/null 2>&1
        sudo apt install fontconfig-infinality openjdk-8-jre -y > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
touch ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
reset
sudo apt-get clean
notify-send -i ok "¡Se han instalado las dependencias y parches correctamente!"
hcentro "${verde}${negritas}¡Se han instalado las dependencias y parches correctamente!${null}"
sleep 3.28
fi;
elif  [ "$Rspta_Nv6" = "No" ]  ; then
		reset
		hcentro "${blanco}${negritas}Ya que usted decidió ${negritas}${rojo}No${null} ${blanco}${negritas}añadir fuentes externas de programas ${null}"
        hcentro "${blanco}${negritas}Puedo instalar la versión ${negritas}${verde}OFICIAL${null} ${blanco}${negritas}de Java${null}"
        hcentro "${blanco}${negritas}proveída por los repositorios oficiales de Ubuntu${null}"
        echo ""
        hcentro "${negritas}${verde}Para continuar leyendo presione ${subrayado}${azul}${negritas}ENTER${null}${negritas}${verde}...${null}"
        read ;
        reset ; hcentro "${blanco}${negritas}La desventaja de esto, es que ${negritas}${rojo}No${null} ${cyan}${negritas}se podrán arreglar algunos errores${null}"
        hcentro "${cyan}${negritas}que suelen ocurrir con la versión ${negritas}${verde}OFICIAL${null} ${cyan}${negritas}, como errores en las fuentes${null}"
        echo ""
        hcentro "${negritas}${verde}Para continuar presione ${subrayado}${azul}${negritas}ENTER${null}${negritas}${verde}...${null}"
        read ;
        reset
        function Menu_Nv7 {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${amarillo}¿Desearía usted que instale la versión ${negritas}${verde}OFICIAL${null} ${negritas}${amarillo}de Java?${null}
"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}" "${negritas}${morado}Prefiero la anterior${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv7="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv7="No"&& sleep 1.64 && reset;;
    3 ) echo "$respuesta $opt" && Rspta_Nv7="Medio"&& sleep 1.64 && reset;;
  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}
        Menu_Nv7
        
        if  [ "$Rspta_Nv7" = "Si" ]  ; then
		reset
		echo "${blanco}${negritas}Por favor introduzca su contraseña para hacer los cambios requeridos${null}"
        sudo echo ""
        reset
        hcentro "${negritas}${cyan}Trabajando. Esto llevará tiempo${null}"
        echo ""
        hcentro "${negritas}${verde}Si tienes las notificaciones activadas,serás notificado cuando esto termine ${null}"
        sudo pkill synaptic
        sudo apt-get clean > /dev/null 2>&1
        sudo apt update > /dev/null 2>&1
        sudo apt install openjdk-7-jre -y > /dev/null 2>&1
		if [ $? -ne 0 ]; then 
            rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	        sleep 3.28
	        exit
        else
        touch ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
            reset
            sudo apt-get clean > /dev/null 2>&1
            notify-send -i ok "¡Se ha instalado la versión oficial de Java correctamente!"
            hcentro "${verde}${negritas}¡Se ha instalado la versión oficial de Java correctamente!${null}" 
            sleep 3.28
        fi;
        elif  [ "$Rspta_Nv7" = "No" ]  ; then
            reset
            echo "${rojo}${negritas}El programa no puede continuar. Saliendo...${null}"
            sleep 3.28
            exit
        elif  [ "$Rspta_Nv7" = "Medio" ]  ; then
            reset
	    	echo "${blanco}${negritas}Por favor introduzca su contraseña para hacer los cambios requeridos${null}"
          sudo echo ""
          reset
          hcentro "${negritas}${cyan}Trabajando. Esto llevará tiempo${null}"
          echo ""
          hcentro "${negritas}${verde}Si tienes las notificaciones activadas,serás notificado cuando esto termine ${null}"
          sudo pkill synaptic > /dev/null 2>&1
          sudo apt-get clean > /dev/null 2>&1
        
        function Anti_PPA {

PPA="/etc/apt/sources.list.d/no1wantdthisname-openjdk-fontfix-*.list"

cat $PPA > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    Estado_PPA_no1wantdthisname_openjdk=Inexistente
else
  
string=$(cat $PPA)
set -- $string
Anti_PPA_Result=$(echo $1)
fi;
}
        function Anti_PPA2 {

echo $Anti_PPA_Result | grep "#" > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    
    Estado_PPA_no1wantdthisname_openjdk=Activo
else
Estado_PPA_no1wantdthisname_openjdk=Inactivo
fi;


echo $Estado_PPA_no1wantdthisname_openjdk

}

        Anti_PPA

        if [ $Estado_PPA_no1wantdthisname_openjdk = $Inexistente ]  > /dev/null 2>&1 ; then
        ( (sudo apt-add-repository ppa:no1wantdthisname/openjdk-fontfix -y) ) > /dev/null 2>&1
        else
        Anti_PPA2
        if [ $Estado_PPA_no1wantdthisname_openjdk = $Inactivo ]  > /dev/null 2>&1 ; then
        Fixed_PPA_no1wantdthisname_openjdk=$(cat $PPA | sed '$d' | sed "s/#//")
        sudo chmod 777 $PPA
        sudo echo $Fixed_PPA_no1wantdthisname_openjdk > $PPA
        sudo chmod 444 $PPA
        if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	      hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	      sleep 3.28
	      exit
        else
        echo "" > /dev/null 2>&1
        fi
        elif [ $Estado_PPA_no1wantdthisname_openjdk = $Activo ]  > /dev/null 2>&1 ; then
        echo "" > /dev/null 2>&1
        fi
        fi
        
        function Anti_PPA_a {

PPA_a="/etc/apt/sources.list.d/no1wantdthisname-ppa-*.list"

cat $PPA_a > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    Estado_PPA_no1wantdthisname=Inexistente
else
  
string=$(cat $PPA_a)
set -- $string
Anti_PPA_a_Result=$(echo $1)
fi;
}
        function Anti_PPA_a2 {

echo $Anti_PPA_a_Result | grep "#" > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    
    Estado_PPA_no1wantdthisname=Activo
else
Estado_PPA_no1wantdthisname=Inactivo
fi;


echo $Estado_PPA_no1wantdthisname

}

        Anti_PPA_a

        if [ $Estado_PPA_no1wantdthisname = $Inexistente ]  > /dev/null 2>&1 ; then
        ( (sudo apt-add-repository ppa:no1wantdthisname/ppa -y) ) > /dev/null 2>&1
        else
        Anti_PPA_a2
        if [ $Estado_PPA_no1wantdthisname = $Inactivo ]  > /dev/null 2>&1 ; then
        Fixed_PPA_a_no1wantdthisname_openjdk=$(cat $PPA_a | sed '$d' | sed "s/#//")
        sudo chmod 777 $PPA_a
        sudo echo $Fixed_PPA_a_no1wantdthisname_openjdk > $PPA_a
        sudo chmod 444 $PPA_a
        if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	      hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	      sleep 3.28
	      exit
        else
        echo "" > /dev/null 2>&1
        fi
        elif [ $Estado_PPA_no1wantdthisname = $Activo ]  > /dev/null 2>&1 ; then
        echo "" > /dev/null 2>&1
        fi
        fi
        
        sudo apt update > /dev/null 2>&1
        sudo apt install fontconfig-infinality openjdk-8-jre -y > /dev/null 2>&1
            if [ $? -ne 0 ]; then 
                rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
            	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
            	sleep 3.28
            exit
        else
        touch ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
        reset
        sudo apt-get clean
        notify-send -i ok "¡Se han instalado las dependencias y parches correctamente!"
        hcentro "${verde}${negritas}¡Se han instalado las dependencias y parches correctamente!${null}"
        sleep 3.28
        fi;
        else
        reset
    	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.28
    	exit
     fi;
else
        reset
    	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.28
    	exit
     fi;

reset

#Lost?

function After {

(

( touch $MinecraftHomeDesktop/minecraft.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x ~/.guekho64/minecraft/desktop_files/minecraft.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

)

(

( touch $MinecraftHomeDesktop/minecraft-offline.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

( chmod +x ~/.guekho64/minecraft/desktop_files/minecraft-offline.desktop ) > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.28
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

)

}

cat /etc/fonts/infinality/infctl.sh
if [ $? -ne 0 ]; then 
        After
else
reset
echo "${negritas}${cyan}Es probable que se le solicite su contraseña. Si es así, introdúzcala${null}"
echo ""
echo "${negritas}${amarillo}Ahora solo seleccione el tipo de fuente que le gustaría tener"
echo "${negritas}${amarillo}Personalmente recomiendo el estilo 4 (osx)${null}"
sudo bash /etc/fonts/infinality/infctl.sh setstyle
reset
hcentro "${negritas}${cyan}Ahora espere un momento, estaré configurando algunas cosas...${null}"
sleep 1.64
After
fi;


reset
sleep 1.64
hcentro "${negritas}${verde}Cargando...${null}";
sleep 1.64
reset

( cat ~/.guekho64/minecraft/.secret/SOYAMBOS ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
    ( cat ~/.guekho64/minecraft/.secret/SOYOFICIAL ) > /dev/null 2>&1
    if [ $? -ne 0 ]; then 
        ( cat ~/.guekho64/minecraft/.secret/SOYOFFLINE ) > /dev/null 2>&1
        if [ $? -ne 0 ]; then 
            rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
            hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
            sleep 3.28
        	exit
        else
            hcentro "${verde}${negritas}Al parecer usted seleccionò el Modo de Launcher: ${negritas}${cyan}Offline${null}"
            sleep 3.28
            Offline
        fi
	else
    	hcentro "${verde}${negritas}Al parecer usted seleccionò el Modo de Launcher: ${negritas}${amarillo}Oficial${null}"
    	sleep 3.28
    	Oficial
    fi;
else
hcentro "${verde}${negritas}Al parecer usted seleccionò ${negritas}${blanco}ambos ${negritas}${verde}Modos de Launcher${null}"
sleep 3.28
Ambos
fi;


) }
 
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

function Menu_Nv3 {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

reset

hcentro "${negritas}${verde}Script de ${cyan}guekho64${verde} para instalar Minecraft${null}"

sleep 2

echo ""
hcentro "${negritas}${blanco}Para más información, visite el canal de YouTube de guekho64:${null}"
echo ""
hcentro "${negritas}${cyan}https://www.youtube.com/user/guekho64 ${null}"

sleep 2

title="${negritas}${amarillo}¿Qué desea hacer?${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Instalar${null}" "${negritas}${rojo}Desinstalar${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

echo ""
hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv3="Instalar"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv3="Desinstalar"&& sleep 1.64 && reset;;

  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv3

if  [ "$Rspta_Nv3" = "Instalar" ]  ; then
		reset
		centro "${negritas}${verde}Iniciando Instalador de Minecraft...${null}"
		sleep 3.28
		reset
		Instalador
		reset
	fi
	
	if  [ "$Rspta_Nv3" = "Desinstalar" ]  ; then
		reset
		centro "${negritas}${rojo}Desinstalando Archivos del Instalador de Minecraft...${null}"
		sleep 3.28
		rm -R ~/.guekho64 > /dev/null 2>&1
		rm ~/.local/share/applications/minecraft.desktop > /dev/null 2>&1
		rm ~/.local/share/applications/minecraft-offline.desktop > /dev/null 2>&1
		echo "
${negritas}${cyan}Introduzca su contraseña para continuar:${null}"
		sudo rm /usr/share/applications/minecraft.desktop > /dev/null 2>&1
		sudo rm /usr/share/applications/minecraft-offline.desktop > /dev/null 2>&1
		sudo rm /usr/bin/minecraft > /dev/null 2>&1
		sudo rm /usr/bin/minecraft-offline > /dev/null 2>&1
		sudo rm $DesktopFolder/"Minecraft Offline.desktop" > /dev/null 2>&1
		sudo rm $DesktopFolder/Minecraft.desktop > /dev/null 2>&1
		sudo rm $DesktopFolder/"minecraft offline.desktop" > /dev/null 2>&1
		sudo rm $DesktopFolder/"Minecraft offline.desktop" > /dev/null 2>&1
		sudo rm $DesktopFolder/"minecraft Offline.desktop" > /dev/null 2>&1
		sudo rm $DesktopFolder/"Minecraft Offline.desktop" > /dev/null 2>&1
		sudo rm $DesktopFolder/minecraft.desktop > /dev/null 2>&1
		sudo rm $DesktopFolder/"Minecraft Offline.desktop" > /dev/null 2>&1
		sudo rm $DesktopFolder/Minecraft.desktop > /dev/null 2>&1
		sudo rm ~/"Minecraft Offline.desktop" > /dev/null 2>&1
		sudo rm ~/Minecraft.desktop > /dev/null 2>&1
		sudo rm ~/"minecraft offline.desktop" > /dev/null 2>&1
		sudo rm ~/"minecraft Offline.desktop" > /dev/null 2>&1
		sudo rm ~/"Minecraft offline.desktop" > /dev/null 2>&1
		sudo rm ~/minecraft.desktop > /dev/null 2>&1
		sudo rm -R /.guekho64/ > /dev/null 2>&1
		
		reset
#Function
function Menu_Nv4 {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${blanco}¿Te gustaría borrar tu carpeta .minecraft${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv4="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv4="No"&& sleep 1.64 && reset;;

  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv4

if  [ "$Rspta_Nv4" = "Si" ]  ; then
		reset
		rm -R ~/.minecraft > /dev/null 2>&1
elif  [ "$Rspta_Nv4" = "No" ]  ; then
		reset
		hcentro "${negritas}${verde}Tu carpeta .minecraft no fue modificada${null}"
		sleep 6.4
		reset
else
		reset
		hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
		sleep 3.28
		exit
	fi
		
function Menu_Nv5 {

#Centra el Texto, gracias a "matrixagent"

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

title="${negritas}${amarillo}¿Te gustaría borrar las fuentes externas de programas${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv5="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv5="No"&& sleep 1.64 && reset;;

  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv5

if  [ "$Rspta_Nv5" = "Si" ]  ; then
		reset
        hcentro "${negritas}${cyan}Quitando fuentes externas de Programas...${null}"
        sleep 1.64
        reset
        echo "${negritas}${amarillo}Introduzca su contraseña para continuar:${null}"
        sudo echo ""
        reset
        centro "${negritas}${cyan}Trabajando...${null}"
        sudo pkill synaptic > /dev/null 2>&1
        sudo apt-get clean > /dev/null 2>&1
        sudo rm /etc/apt/sources.list.d/no1wantdthisname* > /dev/null 2>&1
        ( sudo apt update && sudo pkill synaptic ) > /dev/null 2>&1
        sudo apt install ppa-purge -y > /dev/null 2>&1
        sudo apt-get clean > /dev/null 2>&1
        sudo ppa-purge ppa:no1wantdthisname/openjdk-fontfix > /dev/null 2>&1
        sudo apt-get clean
        sudo pkill synaptic
        sudo ppa-purge ppa:no1wantdthisname/ppa
        sudo apt-get clean
        
elif  [ "$Rspta_Nv5" = "No" ]  ; then
		reset
		hcentro "${negritas}${verde}Las fuentes externas de programas serán conservadas${null}"
		sleep 6.4
		reset
else
		reset
		hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
		sleep 3.28
		exit
	fi
        
        reset
        echo ""
        notify-send -i error $Uninstall
		hcentro "${negritas}${verde}Para salir presione ${subrayado}${azul}${negritas}ENTER${null}${negritas}${verde}...${null}"
		
		read input
	
		yup="Nope"

		if  [ "$input" = "$yup" ]  ; then
		reset
		echo "${negritas}${blanco}¡LOL!, ${amarillo}¿Cómo supiste que ${cyan}palabra ${amarillo}poner? ${negritas}${verde}~${null}${negritas}${azul}Easter Egg${null}${negritas}${verde}~${null}"
		echo "${negritas}${morado}Bueno, ahora que ya lo sabes, espera a que me cierre por mi mismo...${null}"
		sleep 4.8
	else
		exit
	fi
	fi



) }

reset
hcentro "${negritas}${amarillo}Antes de continuar, por favor cierre cualquier otro programa${null}"
hcentro "${negritas}${amarillo}que pueda interferir con el programa de instalación${null}"
echo ""
hcentro "${negritas}${blanco}Por ejemplo: ${negritas}${cyan}Otras terminales y programas como instaladores o actualizadores${null}"
echo ""
sleep 3.28
hcentro "${negritas}${verde}Presione ${negritas}${blanco}ENTER${null} ${negritas}${verde}para continuar${null}"
read
reset

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

hcentro "${negritas}${amarillo}Por favor introduzca su contraseña.Es normal que no se vea${null}"

( ( printf "$Acepto" ) > ~/.Acepto.txt ) > /dev/null 2>&1
( sudo chmod go-w ~/.Acepto.txt ) > /dev/null 2>&1
( sudo chown root:root $HOME/.Acepto.txt ) > /dev/null 2>&1
sudo pkill synaptic > /dev/null 2>&1
sudo apt-get clean > /dev/null 2>&1
sudo apt install libnotify-bin libnotify4 -y > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	echo "${negritas}${rojo}Ha ocurrido un error en la instalación del programa. Saliendo...${null}";
	sleep 2
	exit
  else
  sudo apt-get clean > /dev/null 2>&1
fi;
reset

cat ~/.Nunca.txt > /dev/null 2>&1

if [ $? -ne 0 ]; then

cat /usr/bin/xfce4-terminal > /dev/null 2>&1

if [ $? -ne 0 ]; then

#Functions

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

function Menu_Nv2 {

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

title="${negritas}${verde}¿Te gustaría instalar una terminal adicional en caso de que está falle?
${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${amarillo}No${null}" "${negritas}${rojo}Nunca${null}")
respuesta=$(echo "${negritas}${cyan}
Has elegido:${null}" )

reset
hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "$respuesta $opt" && Rspta_Nv2="Si"&& sleep 1.64 && reset;;
    2 ) echo "$respuesta $opt" && Rspta_Nv2="No"&& sleep 1.64 && reset;;
    3 ) echo "$respuesta $opt" && Rspta_Nv2="Nunca"&& sleep 1.64 && reset;;

  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done

}

Menu_Nv2

centro "${negritas}${cyan}Trabajando...${null}"


if  [ "$Rspta_Nv2" = "Si" ]  ; then

    sudo pkill synaptic > /dev/null 2>&1
    sudo apt-get clean > /dev/null 2>&1
		sudo apt update > /dev/null 2>&1
        sudo apt install xfce4-terminal -y > /dev/null 2>&1
        if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	echo "${negritas}${rojo}Ha ocurrido un error en la instalación del programa. Saliendo...${null}";
	sleep 2
	exit
  else
  reset
  hcentro "${negritas}${verde}Se ha instalado la terminal correctamente${null}"
  sleep 2
  reset
  sudo apt-get clean > /dev/null 2>&1
  
fi;
        
elif  [ "$Rspta_Nv2" = "No" ]  ; then
		reset
		echo "${negritas}No se instalará ninguna consola adicional${null}"
		sleep 1.64
        reset
        
elif  [ "$Rspta_Nv2" = "Nunca" ]  ; then
		reset
		hcentro "${negritas}${cyan}No se le volverá a hacer está pregunta nunca más${null}"
		sleep 1.64
        touch ~/.Nunca.txt
        reset
else
        reset
		hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
		sleep 3.28
		exit
	fi
    
else
        reset
        hcentro "${negritas}${verde}La terminal adicional ya ha sido instalada con anterioridad${null}";
        sleep 3.28
        reset
        fi
else
        reset
        echo "${rojo}${negritas}Con anterioridad,usted determinó que jamás será instalara una terminal adicional${null}";
        sleep 3.28
        reset
        fi
        
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

hcentro "${negritas}Para cualquier asunto relacionado al programa, contácte al dueño:${null}"
hcentro "${negritas}${cyan}guekho64@gmail.com${null}"

sleep 6.4
reset
hcentro "${negritas}Probando conexiòn a Internet...${null}"
( ping -c 4 www.google.com.mx ) > /dev/null 2>&1
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	reset
	hcentro "${negritas}Al parecer usted no está conectado a Internet${null}";
	sleep 3.28
	reset
	hcentro "${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
		sleep 3.28
		exit
else
reset
hcentro "${verde}${negritas}Al parecer está usted conectado a Internet${null}"
sleep 3.28
reset
		fi;
reset

hcentro "${negritas}${amarillo}Ahora, por favor acepte primero la licencia y los términos de uso${null}"
hcentro "${negritas}${amarillo}para declarar que está usted de acuerdo${null}"
echo ""
hcentro "${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}"
read
reset

(

cat ~/.Acepto.txt > /dev/null 2>&1

if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

xdg-open $Casa/LICENCIA.txt > /dev/null 2>&1

#Function

function hcentro {

  text="$1"

  cols=`tput cols`

  IFS=$'\n'$'\r'
  for line in $(echo -e $text); do

    line_length=`echo $line | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c`
    half_of_line_length=`expr $line_length / 2`
    centro=`expr \( $cols / 2 \) - $half_of_line_length`

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}

function vcentro {

  text=$1

  rows=`tput lines`

  text_length=`echo -e $text | wc -l`
  half_of_text_length=`expr $text_length / 2`

  centro=`expr \( $rows / 2 \) - $half_of_text_length`

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

function centro {
  text="$1"
  vcentro "`hcentro $text`"
}

function Menu_Nv1 {

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

title="${negritas}¿Acepta usted la licencia y sus respectivos términos de uso?
${null}"
prompt="${negritas}${blanco}
Seleccione una Opción:${null}"
options=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
respuesta=$(echo "${negritas}${amarillo}
Has elegido:${null}" )

reset
hcentro "$title"
PS3="$prompt "
select opt in "${options[@]}"; do 

    case "$REPLY" in

    1 ) echo "
$respuesta $opt" && Rspta_Nv1="Si" && sleep 1.64 && reset;;
    2 ) echo "
$respuesta $opt" && Rspta_Nv1="No" && sleep 1.64 && reset;;

  # Add another option at the end, like "Quit" // $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "${negritas}${rojo}
Opción Inválida${null}";continue;;

    esac
    break

done
}

Menu_Nv1

if  [ "$Rspta_Nv1" = "Si" ]  ; then
		( touch ~/.Acepto.txt )
		( printf "$Acepto" ) > ~/.Acepto.txt
		( chmod 444 ~/.Acepto.txt )
		Arranque
elif  [ "$Rspta_Nv1" = "No" ]  ; then
		reset
		hcentro "${negritas}Ya que usted no ha aceptado la licencia y los términos de uso${null}"
        hcentro "${negritas}el instalador no puede continuar${null}"
		sleep 3.28
		exit
else
        reset
		hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
		sleep 3.28
		exit
	fi
	else
    echo ""
    reset
	hcentro "${negritas}${verde}Al parecer usted ya ha aceptado anteriormente la licencia y los términos de uso${null}"
    hcentro "${negritas}${verde}por lo que el instalador puede continuar${null}"
	sleep 6.4
	( chmod 444 ~/.Acepto.txt ) > /dev/null 2>&1
	Arranque
	fi;
)
