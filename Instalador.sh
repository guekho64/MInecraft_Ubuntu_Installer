
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

cd ~ || exit

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.2
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

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
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
		sleep 3.2
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.2
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
	
	
hcentro "${negritas}${amarillo}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( touch $Secret/minecraft-offline )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
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
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
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
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft-offline.desktop -f ~/.local/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft-offline.desktop -f $Desktop/Minecraft-Offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

hcentro "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

sudo mv $MinecraftHomeDesktop/minecraft-offline.desktop -f /usr/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

reset ; hcentro "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}" ; sleep 1.64

reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat $Desktop/Minecraft-Offline.desktop
if [ $? -ne 0 ]; then 
	cat ~/Minecraft-Offline.desktop
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.2
            exit
        else
            Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu directorio personal o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; sleep 1.64


reset
		
hcentro "${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
echo ""
echo "${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo ""
echo "${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
echo ""
echo "${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}" && notify-send -i "/.guekho64/icons/ml.ico" $MyMessage
echo ""
echo "${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
		
		read input
	
	yup="Si"

	if  [ "$input" = "$yup" ]  ; then
		reset
		sleep 2
echo "${blanco}Bye${null}"
		exit
		else
		echo "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola esta llena de colores...${null}"
		sleep 3.2
		echo "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 3.2
reset
		sleep 2
echo "${negritas}${blanco}Bye${null}"
rm ~/.guekho64/minecraft/.secret/SOYOFFLINE > /dev/null 2>&1
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

cd ~

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.2
        exit
    else
        Minecraft="exec /usr/lib/jvm/java-7-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"
fi;
else
Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"
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
		sleep 3.2
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.2
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
	
	
hcentro "${negritas}${amarillo}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( touch $Secret/minecraft )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
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
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files/
		
(wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-256x256x8.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon_Premium" ) > ~/.guekho64/minecraft/desktop_files/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft.desktop -f ~/.local/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft.desktop -f $Desktop/Minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

echo "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

sudo mv $MinecraftHomeDesktop/minecraft.desktop -f /usr/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}" ; sleep 1.64
reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat $Desktop/Minecraft.desktop
if [ $? -ne 0 ]; then 
	cat ~/Minecraft.desktop
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.2
            exit
        else
            Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu directorio personal o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; sleep 1.64


reset
		
hcentro "${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
echo ""
echo "${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo ""
echo "${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
echo ""
echo "${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}" && notify-send -i "/.guekho64/icons/ml.ico" $MyMessage
echo ""
echo "${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
		
		read input
	
	yup="Si"

	if  [ "$input" = "$yup" ]  ; then
		reset
		sleep 2
echo "${blanco}Bye${null}"
		exit
		else
		echo "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola esta llena de colores...${null}"
		sleep 3.2
		echo "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 3.2
reset
		sleep 2
echo "${negritas}${blanco}Bye${null}"
rm ~/.guekho64/minecraft/.secret/SOYOFFLINE > /dev/null 2>&1
		exit	
		fi;
	

) }

function Oficial_A { ( 
 
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

cd ~

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.2
        exit
    else
        Minecraft="exec /usr/lib/jvm/java-7-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"
fi;
else
Minecraft="exec /usr/lib/jvm/java-8-openjdk-*/bin/java -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -jar ~/.guekho64/minecraft/launchers/offline/Minecraft.jar"
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

title="${negritas}${cyan}¿Desea colocar el ícono de Minecraft Premium en su escritorio?${null}"
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
		echo "${negritas}${azul}Se pondrà el icono de Minecraft Premium en su carpeta personal${null}"
		sleep 3.2
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.2
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
	
	
hcentro "${negritas}${amarillo}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( touch $Secret/minecraft )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
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
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

MinecraftHomeIcons=/.guekho64/icons
MinecraftHomeDesktop=~/.guekho64/minecraft/desktop_files/
		
(wget --no-check-certificate --directory-prefix=$MinecraftHomeIcons http://www.rw-designer.com/icon-image/5547-256x256x8.png -O $MinecraftHomeIcons/ml.ico) > /dev/null 2>&1
( printf "$Minecraft_Icon_Premium" ) > ~/.guekho64/minecraft/desktop_files/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft.desktop -f ~/.local/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft.desktop -f $Desktop/Minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

echo "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

sudo mv $MinecraftHomeDesktop/minecraft.desktop -f /usr/share/applications/minecraft.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}" ; sleep 1.64
reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat $Desktop/Minecraft.desktop
if [ $? -ne 0 ]; then 
	cat ~/Minecraft.desktop
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.2
            exit
        else
            Aviso="${verde}${negritas}Podrás encontrar Minecraft Premium en tu directorio personal o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar Minecraft Premium en tu escritorio o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; sleep 1.64

) }

function Offline_A { ( 
 
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

cd ~

cat ~/.guekho64/minecraft/.secret/OPENJRE8UNOFFICIAL
if [ $? -ne 0 ]; then 
    cat ~/.guekho64/minecraft/.secret/OPENJRE7OFFICIAL
	if [ $? -ne 0 ]; then 
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
        hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
        sleep 3.2
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

MinecraftHomeOriginal=~/.guekho64/minecraft/launchers/original
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

title="${negritas}${cyan}¿Desea colocar un ícono de Minecraft Offline en su escritorio?${null}"
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
		echo "${negritas}${azul}Se pondrà el icono de Minecraft Offline en su carpeta personal${null}"
		sleep 3.2
		reset
		Desktop=~
    else
        rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	    hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	    sleep 3.2
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
	
	
hcentro "${negritas}${amarillo}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

( touch $Secret/minecraft-offline )
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
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
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
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
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp $MinecraftHomeDesktop/minecraft-offline.desktop -f ~/.local/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

cp ~/.local/share/applications/minecraft-offline.desktop -f $Desktop/Minecraft-Offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;

hcentro "${negritas}${azul}Es posible que se le solicite su contraseña. Si es el caso, por favor tecléela${null}"

sudo mv $MinecraftHomeDesktop/minecraft-offline.desktop -f /usr/share/applications/minecraft-offline.desktop
if [ $? -ne 0 ]; then 
rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
	hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
	sleep 3.2
	exit
else
echo "${verde}${negritas}OK${null}"
fi;
reset ; hcentro "${verde}${negritas}¡El Instalador Ha Finalizado con Éxito!${null}" ; sleep 1.64
reset

rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1

cat $Desktop/Minecraft-Offline.desktop
if [ $? -ne 0 ]; then 
	cat ~/Minecraft-Offline.desktop
        if [ $? -ne 0 ]; then 
          rm -R ~/.guekho64/minecraft/.secret > /dev/null 2>&1
           hcentro "${rojo}${negritas}Algo salió mal, cerrando el programa...${null}";
           sleep 3.2
            exit
        else
            Aviso="${verde}${negritas}Podrás encontrar Minecraft Offline en tu directorio personal o en el menú de inicio${null}"
        fi;
else
Aviso="${verde}${negritas}Podrás encontrar Minecraft Offline en tu escritorio o en el menú de inicio${null}"
fi;

reset ; hcentro "$Aviso" ; sleep 1.64


reset
		
hcentro "${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
echo ""
echo "${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
echo ""
echo "${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
echo ""
echo "${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}" && notify-send -i "/.guekho64/icons/ml.ico" $MyMessage
echo ""
echo "${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
		
		read input
	
	yup="Si"

	if  [ "$input" = "$yup" ]  ; then
		reset
		sleep 2
echo "${blanco}Bye${null}"
		exit
		else
		echo "${azul}${negritas}Bueno, puedes quedarte a ver como tu consola esta llena de colores...${null}"
		sleep 3.2
		echo "${negritas}${blanco}¡Nah! Era broma, ya me voy, xDD${null}"
		sleep 3.2
reset
		sleep 2
echo "${negritas}${blanco}Bye${null}"
rm ~/.guekho64/minecraft/.secret/SOYOFFLINE > /dev/null 2>&1
		exit	
		fi;
	

) }

function Ambos {

Oficial_A

Offline_A

} 
 
