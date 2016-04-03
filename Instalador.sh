#!/bin/bash

# THIS INSTALLER is Copyright of guekho64 © 2015-2016

# "Minecraft" is a trademark of Mojang Synergies AB. Mojang © 2009-2016.

# "https://s3.amazonaws.com/" is owned by Amazon Web Services Inc. © 2016 

            # ENGLISH

# Neither the software nor the develeper have been sponsored, certified 
# or any form's approved by the brands or companies mentioned

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

            # ESPAÑOL

# Ni el software ni el desarrollador han sido patrocinados, certificados 
# o aprovados de ninguna forma por las marcas o empresas mencionadas

# Este programa es software libre: usted puede redistribuírlo y/o
# modificarlo
# bajo los términos de la "GNU General Public License", tal cual la 
# publicó la 
# "Free Software Foundation", ya sea la versión 3 de la Licencia, o
# (En su opinión) cualquier versión posterior

# Este programa es distribuído con la esperanza de que le será útil,
# pero SIN NINGUNA GARANTÍA; ni siquiera con la garantía implícita de 
# COMERCIALIZACIÓN o APTITUD PARA UN PROPÓSITO EN PARTICULAR. Vea la
# "GNU General Public License" para más detalles.

# Usted debió haber recibido una copia de la "GNU General Public License"
# junto con este programa. Si no, vea <http://www.gnu.org/licenses/>.

clear

# Lenguaje: Español

# Variables Universales

    # Colores
    
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
        
    # Directorios
        
        Fuente="${BASH_SOURCE[0]}"
            while [ -h "$Fuente" ]; do
                Directorio="$( cd -P "$( dirname "$Fuente" )" && pwd )"
                declare Fuente="$(readlink "$Fuente")"
                [[ $Fuente != /* ]] && Fuente="$Directorio/$Fuente"
            done
        Directorio="$( cd -P "$( dirname "$Fuente" )" && pwd )"
        
        Raiz="$Directorio"             

    # Archivos
        
        Registro="${Raiz}/Registro.txt"
        
    # Misc
    
        Nada=""
        ListoNoty="Listo"
        Termine="He terminado"
        AlgoSalioMal="Algo estuvo mal"
        AlgoSalioMalInternet="Hay algún error en su conexión a Internet"
        ErrorCodigo="Error código $?"
        
        Acepto="Yo acepté la licencia del Instalador de guekho64"
        
    # Programas
    
        apt="apt-get"
        get="wget"
        
# Variables de Lenguaje

    # Español

        # Mensaje Inicial
        
            Msg_Inicio="${negritas}Para cualquier asunto relacionado al programa, contácte al desarrollador:${null}"
            
            Email="${negritas}${amarillo}guekho64@gmail.com${null}"
            
        # Acciones         
            
            ENTERPRESS="${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}"
            
            Msg_Contra="${morado}${negritas}Introduzca su contraseña para continuar${null}"
            
            Listo="${verde}${negritas}¡Listo!${null}"
            
            PingPong="${negritas}Probando conexiòn a Internet...${null}"
            
            ErrorPingPong="${negritas}Al parecer usted no está conectado a Internet${null}"
            
            BeHappyPingPong="${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
            
            Error="${rojo}${negritas}Cerrando el programa...${null}"
            
            NoPasswd="${amarillo}${negritas}Para correr el programa, se necesita su contraseña${null}"
            
            GoodPasswd="${negritas}${cyan}La contraseña es correcta${null}"
            
            IncorrectPasswd="${negritas}${amarillo}La contraseña es incorrecta${null}"
            
            Espera="${negritas}${cyan}Trabajando. Esto llevará tiempo${null}"
            
            Noty="${negritas}${verde}Si tienes las notificaciones activadas,serás notificado cuando esto termine ${null}"
            
        # Numeración: Nope_Carpetas
        
            Nope_Carpetas1="${negritas}${verde}No se generará ninguna carpeta adicional${null}"

            Nope_Carpetas2="${negritas}${verde}Desgraciadamente no podré colocar íconos en su escritorio${null}"
            
        # Variables Universales de Lenguaje de: "Menu Simple"
        
            SeleccioneOpcion="${negritas}${blanco}
Seleccione una Opción:${null}"

            Opciones=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
            
            Rspsta="$(echo "${negritas}${cyan}
Has elegido:${null}" )"

            Nulo="${negritas}${rojo}
Opción Inválida${null}"

            # Numeración
            
                Titulo1="${verde}${negritas}¿Desea que el instalador genere dichas carpetas por usted?${null}"
            
        # Post-Inicio
        
            PstInicio1="${Verde}${negritas}Por alguna extraña razón, hace falta cierto archivo común, y es el que${null}"
            PstInicio2="${Verde}${negritas}determina la ubicación de ciertas carpetas que el instalador utiliza, además de${null}"
            PstInicio3="${Verde}${negritas}que muchas otras aplicaciones, hacen uso de estas carpetas, creyendo que existen${null}"
            PstInicio4="${amarillo}${negritas}Probablemente sea solo un error del programa,pero si usted está conciente de que${null}"
            PstInicio5="${amarillo}${negritas}su carpeta personal carece de folders que son habituales, como las carpetas${null}"
            PstInicio6="${amarillo}${negritas}de Descargas o del Escritorio, puede dejar que el instalador tome las acciones${null}"
            PstInicio7="${amarillo}${negritas}para poder crear las carpetas faltantes por usted, evitando así futuros errores${null}"
            

# Funciones Universales

    # Atrapar Ctrl+C
    
        trap Error INT

        Error () {
        
        ( rm -R "${HOME}/.guekho64/minecraft/.secret" | tee -a "$Registro" ) > /dev/null 2>&1
        
        clear
        KO > /dev/null 2>&1
        hcentro "$Error"
        sleep 3.28
        clear
        exit
        
        }

    # Atrapar Ctrl+C FINAL

        hcentro () {

  text="$1"

  cols="$(tput cols)"

  IFS=$'\n'$'\r'
  for line in $(echo -e "$text"); do

    line_length="$(echo "$line" | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | wc -c)"
    half_of_line_length="$(expr "$line_length" / 2)"
    centro="$(expr \( "$cols" / 2 \) - "$half_of_line_length")"

    spaces=""
    for ((i=0; i < $centro; i++)) {
      spaces="$spaces "
    }

    echo "$spaces$line"

  done

}
        
        vcentro () {

  text=$1

  rows="$(tput lines)"

  text_length="$(echo -e $text | wc -l)"
  half_of_text_length="$(expr $text_length / 2)"

  centro="$(expr \( $rows / 2 \) - $half_of_text_length)"

  lines=""

  for ((i=0; i < $centro; i++)) {
    lines="$lines\n"
  }

  echo -e "$lines$text$lines"
}

        centro () {
  text="$1"
  vcentro "$(hcentro $text)"
}

    # Menus
    
        # Menu Simple
            
            Menu_Simple () {

            T="${Titulo}"
            
            
            hcentro "$T"
            PS3="$SeleccioneOpcion "
            select opt in "${Opciones[@]}"; do 

                case "$REPLY" in

                1 ) echo "$Rspsta $opt" && eval Respuesta$1="Si" && sleep 1.64 && clear;;
                2 ) echo "$Rspsta $opt" && eval Respuesta$1="No" && sleep 1.64 && clear;;

                *) echo "${Nulo}";continue;;

                esac
                break

            done
            
            }
            
# Funciones Universales FINAL            

# IMPORTANTE: ACEPTACIÓN DE LA LICENCIA

        # Strings
            
            TituloDeLaLicencia="${negritas}Por favor, primero acepte la licencia para continuar${null}"
            
            TituloDeLaLicencia1="${negritas} y así declarar que está usted de acuerdo${null}"
            
            ArchivoDeLicenciaAceptada="${HOME}/.config/guekho64/MinecraftInstaller/.OK.txt"
            
            LICENCE_NO="${negritas}Usted no ha aceptado la licencia y los términos de uso${null}"
            
            LICENCE_NO1="${negritas}por lo que el instalador no puede continuar${null}"
            
            Why="${rojo}${negritas}Algo salió mal, cerrando el programa...${null}"
            
            TituloLICENCIA="${negritas}${amarillo}¿Acepta usted la licencia y sus respectivos términos de uso?
${null}"

            Licencia_Yay="${negritas}${verde}Al parecer usted ya ha aceptado anteriormente la licencia y los términos de uso${null}"
            
            Licencia_Yay1="${negritas}${verde}por lo que el instalador puede continuar${null}"

        # Procedimiento
        
            cat "${ArchivoDeLicenciaAceptada}" > /dev/null 2>&1

            if [ $? -ne 0 ]; then
            
                hcentro "${TituloDeLaLicencia}"
                hcentro "${TituloDeLaLicencia1}"
                echo ""
                hcentro "$ENTERPRESS"
                read
                clear
                
                ( xdg-open "${Directorio}/COPYING.txt" > /dev/null 2>&1 ) &
                
                n=LICENCIA
                eval Titulo="\$"Titulo${n}""
              
                Menu_Simple "${n}"
                
                if [ "$RespuestaLICENCIA" = "Si" ]; then
                
                     ( mkdir -p "${HOME}/.config/guekho64/MinecraftInstaller/" ) > /dev/null 2>&1
                     ( touch "${HOME}/.config/guekho64/MinecraftInstaller/.OK" ) > /dev/null 2>&1
                     ( printf "$Acepto" ) > "${ArchivoDeLicenciaAceptada}"
                     ( chmod 444 "${ArchivoDeLicenciaAceptada}" )
                    
                elif [ "$RespuestaLICENCIA" = "No" ]; then
                
                        clear
                        hcentro "$LICENCE_NO"
                        hcentro "$LICENCE_NO1"
                        sleep 3.28
                        exit
                    
                else
                
                        clear
                        hcentro "$Why"
                        sleep 3.28
                        exit
                    
                fi
           
           else
           
                echo ""
                clear
                hcentro "$Licencia_Yay"
                hcentro "$Licencia_Yay1"
                sleep 6.4
                clear
            fi
           
        
                    
                    

# Apartado de Funciones

    # Función: ¡Listo!
    
        Listo () {
        
        echo ""
        hcentro "$Listo"
        sleep 0.64
        
        }
        
    # Función: Notificación OK
    
        OK () {
        
        notify-send "$ListoNoty" "$Termine" --icon=gtk-ok
        
        }

    # Función: Notificación "Algo anda mal"
    
        KO () {
        
        notify-send "$AlgoSalioMal" "$ErrorCodigo" --icon=error
        
        }
        
    # Función: Atrapar error de ping
    
        PingPongError () {
        
        ( rm -R "${HOME}/.guekho64/minecraft/.secret" | tee -a "$Registro" ) > /dev/null 2>&1
        
        clear
        hcentro "$ErrorPingPong"
        sleep 3.28
        clear
        hcentro "$BeHappyPingPong"
        sleep 3.28
        clear
        exit
        
        }
        
    # Función: Checar Error
    
        CheckError () {
        
        if [ $? -ne 0 ]; then 
            
            Error
            
        else

            Listo

        fi;
        
        }
        
        
    # Contraseña
    
        # Método de Introducción
        
            cat "/usr/bin/zenity" > /dev/null 2>&1

            if [ $? -ne 0 ]; then
            
                hcentro "$Msg_Contra"
                echo ""
                read Passwd

            else

                hcentro "$Msg_Contra" &
                Passwd="$(zenity --title "$Msg_Contra_Zenity" --password --window-icon=gtk-execute)" > /dev/null 2>&1
                
            fi;
            
        # Función: autosudo            
    
        autosudo () {
        
        LOL=$( echo "$Passwd" | sudo -S "$@" )
        
        printf "$LOL " 
        
        }
        
        # Función: Registrador
        
        Registrador () {
        
        tee -a "$Registro"
        
        }
            
            
# PRE-INICIO SCRIPT
    
PreInicio () {

    # Programas Diversos
    
    # Gestor de Descargas
        
        if [ "$get" = "wget" ]; then
            
            GetMode="-O"
            
        elif [ "$get" = "aria2c" ]; then
        
            GetMode="-o"
            
        else
                
            Error
            
        fi;
    
}
            
# PRE-INICIO SCRIPT

# INICIO SCRIPT
    
Inicio () {

if [ "$Passwd" = "$Nada" ]; then

    clear
    hcentro "$NoPasswd"
    sleep 3.28
    echo ""
    Error
    
else

    ( echo "$Passwd" | sudo -S echo ) > /dev/null 2>&1
    
    if [ "$?" = "0" ]; then
    
        clear
        hcentro "$GoodPasswd"
        sleep 3.28
        
    else
    
        echo ""
        hcentro "$IncorrectPasswd"
        sleep 3.28
        Error
        
    fi
    
fi

clear

cat "$Registro" > /dev/null 2>&1

if [ $? -ne 0 ]; then

    touch "$Registro"

else

    printf "" > "$Registro"
    
fi;

# Verificar conexión a Internet

    clear
    hcentro "$PingPong"
    ( ping -c 4 www.google.com.mx ) >> "$Registro"
    if [ $? -ne 0 ]; then
    
    PingPongError
    
    else
    
    Listo
    
    fi

clear

hcentro "$Msg_Inicio"
hcentro "$Email"

sleep 6.4
clear

    # CHECAR DIRECTORIOS EN /HOME
    
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
              
    Menu_Simple "${n}"
    
    if  [ "$Respuesta1" = "Si" ]  ; then
    
        clear
        hcentro "$Espera"
        hcentro "$Noty"
        (autosudo $apt clean | Registrador) > /dev/null 2>&1
        CheckError
        (autosudo $apt update | Registrador) > /dev/null 2>&1
        CheckError
        (autosudo $apt install xdg-user-dirs -y | Registrador) > /dev/null 2>&1
        CheckError
        (autosudo $apt clean | Registrador) > /dev/null 2>&1
        CheckError
        (xdg-user-dirs-update | Registrador) > /dev/null 2>&1
        CheckError

        clear
        OK
        Listo
        
        Estado_xdg_user_dirs="Si"
        
        sleep 3.2
        clear
    
    elif  [ "$Respuesta1" = "No" ]  ; then
    
        clear
        hcentro "$Nope_Carpetas1"
        hcentro "$Nope_Carpetas2"
        
        Estado_xdg_user_dirs="No"

        sleep 1.6
        echo ""
        hcentro "$ENTERPRESS"
        read
        clear
    
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

# ETAPA INTERMEDIA : SCRIPT

PreInicio
Inicio
