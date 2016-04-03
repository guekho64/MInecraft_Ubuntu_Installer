#Copyright © 2015-2016 guekho64

            #ENGLISH

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.

            #ESPAÑOL

#Este programa es software libre: usted puede redistribuírlo y/o modificarlo
#bajo los términos de la "GNU General Public License", tal cual la publicó la 
#"Free Software Foundation", ya sea la versión 3 de la Licencia, o
#(En su opinión) cualquier versión posterior

#Este programa es distribuído con la esperanza de que le será útil,
#pero SIN NINGUNA GARANTÍA; ni siquiera con la garantía implícita de 
#COMERCIALIZACIÓN o APTITUD PARA UN PROPÓSITO EN PARTICULAR. Vea la
#"GNU General Public License" para más detalles.

#Usted debió haber recibido una copia de la "GNU General Public License"
#junto con este programa. Si no, vea <http://www.gnu.org/licenses/>.

#!/bin/bash

reset

#Lenguaje: Español

#Variables Universales

    #Colores
    
        subrayado="$(tput sgr 0 1)"  
        negritas="$(tput bold)" 
        rojo="$(tput setaf 1)" 
        verde="$(tput setaf 2)"
        amarillo="$(tput setaf 3)"
        azul="$(tput setaf 4)"  
        morado="$(tput setaf 5)"    
        cyan="$(tput setaf 6)"    
        blanco="$(tput setaf 7)"    
        null="$(tput sgr0)"
        
    #Directorios
        
        Fuente="${BASH_SOURCE[0]}"
            while [ -h "$Fuente" ]; do
                Directorio="$( cd -P "$( dirname "$Fuente" )" && pwd )"
                declare Fuente="$(readlink "$Fuente")"
                [[ $Fuente != /* ]] && Fuente="$Directorio/$Fuente"
            done
        Directorio="$( cd -P "$( dirname "$Fuente" )" && pwd )"
        
        Raiz="$Directorio"
        
    #Archivos
        
        Registro="${Raiz}/Registro.txt"
        
    #Misc
    
        Nada=""
        Error_Status="$(echo $?)"
        ListoNoty="Listo"
        Termine="He terminado"
        AlgoSalioMal="Algo anda mal"
        ErrorCodigo="Error código $?"
        
    #Programas
    
        apt="apt-get"
        get="wget"
     
#Variables de Lenguaje

    #Español

        #Mensaje Inicial
        
            Msg_Inicio="${negritas}Para cualquier asunto relacionado al programa, contácte al desarrollador:${null}"
            
            Email="${negritas}${amarillo}guekho64@gmail.com${null}"
            
        #Acciones         
            
            ENTERPRESS="${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}"
            
            Msg_Contra="${morado}${negritas}Introduzca su contraseña para continuar${null}"
            
            Listo="${verde}${negritas}¡Listo!${null}"
            
            Error="${rojo}${negritas}Cerrando el programa...${null}"
            
            NoPasswd="${amarillo}${negritas}Para correr el programa, se necesita su contraseña${null}"
            
            GoodPasswd="${negritas}${cyan}La contraseña es correcta${null}"
            
            IncorrectPasswd="${negritas}${amarillo}La contraseña es incorrecta${null}"
            
            Espera="${negritas}${cyan}Trabajando. Esto llevará tiempo${null}"
            
            Noty="${negritas}${verde}Si tienes las notificaciones activadas,serás notificado cuando esto termine ${null}"
            
        #Numeración: Nope_Carpetas
        
            Nope_Carpetas1="${negritas}${verde}No se generará ninguna carpeta adicional${null}"

            Nope_Carpetas2="${negritas}${verde}Desgraciadamente no podré colocar íconos en su escritorio${null}"
            
        #Variables Universales de Lenguaje de: "Menu Simple"
        
            SeleccioneOpcion="${negritas}${blanco}
Seleccione una Opción:${null}"

            Opciones=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
            
            Respuesta="$(echo "${negritas}${cyan}
Has elegido:${null}" )"

            Nulo="${negritas}${rojo}
Opción Inválida${null}"

            #Numeración
            
                Titulo1="${verde}${negritas}¿Desea que el instalador genere dichas carpetas por usted?${null}"
            
        #Post-Inicio
        
            PstInicio1="${Verde}${negritas}Por alguna extraña razón, hace falta cierto archivo común, y es el que${null}"
            PstInicio2="${Verde}${negritas}determina la ubicación de ciertas carpetas que el instalador utiliza, además de${null}"
            PstInicio3="${Verde}${negritas}que muchas otras aplicaciones, hacen uso de estas carpetas, creyendo que existen${null}"
            PstInicio4="${amarillo}${negritas}Probablemente sea solo un error del programa,pero si usted está conciente de que${null}"
            PstInicio5="${amarillo}${negritas}su carpeta personal carece de folders que son habituales, como las carpetas${null}"
            PstInicio6="${amarillo}${negritas}de Descargas o del Escritorio, puede dejar que el instalador tome las acciones${null}"
            PstInicio7="${amarillo}${negritas}para poder crear las carpetas faltantes por usted, evitando así futuros errores${null}"
            

#Funciones Universales

        hcentro () {

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
        
        vcentro () {

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

        centro () {
  text="$1"
  vcentro "`hcentro $text`"
}

    #Función: Notificación OK
    
        OK () {
        
        notify-send "$ListoNoty" "$Termine" --icon=gtk-ok
        
        }

    #Función: Notificación "Algo anda mal"
    
        KO () {
        
        notify-send "$AlgoSalioMal" "$ErrorCodigo" --icon=error
        
        }

    #Atrapar Ctrl+C
    
        trap Error INT

        Error () {
        
        ( rm -R "${HOME}/.guekho64/minecraft/.secret" | tee -a "$Registro" ) > /dev/null 2>&1
        
        clear
        KO
        hcentro "$Error"
        sleep 3.28
        reset
        exit
        
        }

    #Función: Checar Error
    
        CheckError () {
        
        if [ $? -ne 0 ]; then 
            
            Error
            
        fi;
        
        }
        
    #Contraseña
    
        #Método de Introducción
        
            cat "/usr/bin/zenity" > /dev/null 2>&1

            if [ $? -ne 0 ]; then
            
                hcentro "$Msg_Contra"
                echo ""
                read Passwd

            else

                Passwd="$(zenity --title "$Msg_Contra_Zenity" --password --window-icon=gtk-execute)"
                
            fi;
            
        #Función: autosudo            
    
        autosudo () {
        
        LOL=$( echo "$Passwd" | sudo -S "$@" )
        
        printf "$LOL " 
        
        }

    #Menus
    
        #Menu Simple
            
            Menu_Simple () {

            T="${Titulo}"
            
            
            hcentro "$T"
            PS3="$SeleccioneOpcion "
            select opt in "${Opciones[@]}"; do 

                case "$REPLY" in

                1 ) echo "$Respuesta $opt" && eval Rspsta$1="Si" && sleep 1.64 && reset;;
                2 ) echo "$Respuesta $opt" && eval Rspsta$1="No" && sleep 1.64 && reset;;

                *) echo "${Nulo}";continue;;

                esac
                break

            done
            
            }
        
#INICIO SCRIPT
    
Inicio () {

if [ "$Passwd" = "$Nada" ]; then

    hcentro "$NoPasswd"
    sleep 3.28
    echo ""
    Error
    
else

    ( echo "$Passwd" | sudo -S echo ) > /dev/null 2>&1
    
    if [ "$Error_Status" = "0" ]; then
        hcentro "$GoodPasswd"
        sleep 3.28
        
    else
    
        hcentro "$IncorrectPasswd"
        sleep 3.28
        Error
        
    fi
    
fi    

cat "$Registro" > /dev/null 2>&1

if [ $? -ne 0 ]; then

    touch "$Registro"

else

    printf "" > "$Registro"
    
fi;

reset

hcentro "$Msg_Inicio"
hcentro "$Email"

sleep 6.4
reset

    #CHECAR DIRECTORIOS EN /HOME
    
cat "${HOME}/.config/user-dirs.dirs" > /dev/null 2>&1

if [ $? -ne 0 ]; then 
        sleep 3.28
          
          hcentro "$PstInicio1"
          hcentro "$PstInicio2"
          hcentro "$PstInicio3"
          echo ""
          hcentro "$PstInicio4"
          hcentro "$PstInicio5"
          hcentro "$PstInicio6"
          hcentro "$PstInicio7"
          echo ""

    n=1
    eval Titulo="\$"Titulo${n}""
              
    Menu_Simple 1
    
    if  [ "$Rspsta1" = "Si" ]  ; then
    
        reset
        hcentro "$Espera"
        hcentro "$Noty"
        (autosudo $apt clean | tee -a "$Registro") > /dev/null 2>&1
        CheckError
        (autosudo $apt update | tee -a "$Registro") > /dev/null 2>&1
        CheckError
        (autosudo $apt install xdg-user-dirs -y | tee -a "$Registro") > /dev/null 2>&1
        CheckError
        (autosudo $apt clean | tee -a "$Registro") > /dev/null 2>&1
        CheckError
        (xdg-user-dirs-update | tee -a "$Registro") > /dev/null 2>&1
        CheckError

        reset
        OK
        hcentro "$Listo"
        
        Estado_xdg_user_dirs="Si"
        
        sleep 3.2
        reset
    
    elif  [ "$Rspsta1" = "No" ]  ; then
    
        reset
        hcentro "$Nope_Carpetas1"
        hcentro "$Nope_Carpetas2"
        
        Estado_xdg_user_dirs="No"

        sleep 1.6
        echo ""
        hcentro "$ENTERPRESS"
        read
        reset
    
    else
    
        Error
    
    fi

else

    Estado_xdg_user_dirs="Si"

    fi
    
if [ "$Estado_xdg_user_dirs" = "Si" ] ; then

    desktopVar=$(cat ~/.config/user-dirs.dirs | grep "XDG_DESKTOP_DIR")
    desktopFolder=$(echo ${desktopVar/XDG_DESKTOP_DIR=/""} | tr -d '"')
    DeskFolder=${desktopFolder:6}
    Escritorio="$(echo ~/$DeskFolder)"
    
elif [ "$Estado_xdg_user_dirs" = "No" ] ; then

    Escritorio="$(echo ${HOME})"
    
else
    
    Error
    
fi


    
}
