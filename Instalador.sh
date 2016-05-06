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

# Todo viaje, por largo que sea, empieza por un solo paso. "Lao Tse"

# Antes de todo :v

tput reset

Opts="$( echo $@)"

Antes () {

ForceRead="$( echo "$Opts" |  grep -o '\--force-read["]*' )"

if [ "$ForceRead" != "--force-read" ]; then

	OverrideZenity="0"
	
else

	OverrideZenity="1"
	
fi

}

Antes > /dev/null 2>&1

# Antes de todo :v (Fin)


# Lenguaje: Español

# Funciones No-Genéricas
		
		Universe () {	Universe="$(echo "$(echo "$(cat /etc/apt/sources.list)" | grep -o 'universe["]*')" | sed '1q;d')" ; }
		
		BuscaAria2 () { BuscaAria2="$(apt-cache search aria2 | grep -oe "aria2"'["]*' | sed '1q;d')" ; }
		
		BuscaAptFast () { BuscaAptFast="$(apt-cache search apt-fast | grep -oe "apt-fast"'["]*' | sed '1q;d')" ; }
		
		BuscaInfinality () { BuscaInfinality="$(apt-cache search fontconfig-infinality | grep -oe "fontconfig-infinality"'["]*' | sed '1q;d')" ; }
		
		BuscaJava8OpenJdk () { BuscaJava8OpenJdk="$(ls /usr/lib/jvm/ | grep -oe "java-8-openjdk"'["]*' | sed '1q;d')" ; }
		
		BuscaZulu8 () {  BuscaZulu8="$(ls /usr/lib/jvm/ | grep -oe "zulu-8"'["]*' | sed '1q;d')" ; }

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
		
		
		LauncherPremium="${HOME}/.guekho64/minecraft/launchers/premium"
		
		LauncherOffline="${HOME}/.guekho64/minecraft/launchers/offline"
		
		MinecraftIcons="${HOME}/.guekho64/minecraft/icons"
		
		MinecraftDesktop="${HOME}/.guekho64/minecraft/desktop_files"
		
		Secret="${HOME}/.guekho64/minecraft/.secret"
		
		UniversalAppsDir="/usr/share/applications"
		
	# UTF-8 ?
	
		Cool="$( echo "$LANG" | grep -o 'UTF-8[*]*' )"
		
		if [ "${Cool}" = "UTF-8" ]; then
		
			Simbolo="${negritas}${blanco}➤${null}"
			
		else
		
			Simbolo="${negritas}${blanco}*${null}"
			
		fi

    # Archivos
        
        Registro="${Raiz}/Registro.txt"
		
		MinecraftPremiumJarDownload="https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar"
		
		MinecraftIcon="http://www.rw-designer.com/icon-image/5547-64x64x32.png"
		
		MinecraftPremiumJar="$LauncherPremium/Minecraft.jar"
		
		MinecraftOfflineJar="$LauncherOffline/Minecraft.jar"
		
		AptListFiles="/etc/apt/sources.list.d/"
		
		PreferencesFile="$Secret/guekho64"
		
		PreferencesFileDest="/etc/apt/preferences.d/"
		
		TempGtkjava="$Secret/gtkjava"
		
		DestGtkjava="/usr/bin/"
		
		Bin="$DestGtkjava"
		
		Zenity="/usr/bin/zenity"
		
		OverrideForJava='Package: *
Pin: release o=LP-PPA-no1wantdthisname-openjdk-fontfix
Pin-Priority: 6400'
		
		InfinalityScript="/etc/fonts/infinality/infctl.sh"
		
		NotyNopeEternal="${HOME}/.config/guekho64/MinecraftInstaller/NotyNope"
		
		PstInicioNeverFile="${HOME}/.config/guekho64/MinecraftInstaller/HomeDirsNope"
		
	# Special Temp Minecraft Locations
	
		Tempminecraftpremium="$Secret/minecraft-premium"
		
		Tempminecraftoffline="$Secret/minecraft-offline"
		
		Desktopminecraftpremium="$MinecraftDesktop/minecraft-premium.desktop"
		
		Desktopminecraftoffline="$MinecraftDesktop/minecraft-offline.desktop"

    #Licencia            

        # IMPORTANTE: ACEPTACIÓN DE LA LICENCIA

            # Strings
            
                TituloDeLaLicencia="${negritas}Por favor, primero acepte la licencia para continuar${null}"
                
                TituloDeLaLicencia1="${negritas} y así declarar que está usted de acuerdo${null}"
            
                ArchivoDeLicenciaAceptada="${HOME}/.config/guekho64/MinecraftInstaller/.OK.txt"
            
                LICENCE_NO="${negritas}Usted no ha aceptado la licencia y los términos de uso${null}"
            
                LICENCE_NO1="${negritas}por lo que el programa no puede continuar${null}"
            
                Why="${rojo}${negritas}Algo salió mal, cerrando el programa...${null}"
            
                TituloLICENCIA="${negritas}${amarillo}¿Acepta usted la licencia y sus respectivos términos de uso?
${null}"

                Licencia_Yay="${negritas}${verde}Al parecer, usted ya ha aceptado anteriormente la licencia y los términos de uso${null}"
            
                Licencia_Yay1="${negritas}${verde}por lo que el programa puede continuar${null}"
        
    # Misc
	
		DistroActual="$(lsb_release -is) $(lsb_release -rs) $(lsb_release -cs)"
	
		LinuxMint17="$(echo "$(echo "$DistroActual" | grep -oe 'LinuxMint["]*' -oe '17["]*')" | tr -d '[[:space:]]')"
		
		LinuxMint13="$(echo "$(echo "$DistroActual" | grep -oe 'LinuxMint["]*' -oe '13["]*')" | tr -d '[[:space:]]')"
		
		Ubuntu12="$(echo "$(echo "$DistroActual" | grep -oe 'Ubuntu["]*' -oe '12["]*')" | tr -d '[[:space:]]')"
		
		Ubuntu13="$(echo "$(echo "$DistroActual" | grep -oe 'Ubuntu["]*' -oe '13["]*')" | tr -d '[[:space:]]')"
		
		DebianLinux="$(echo $DistroActual | grep -o 'Debian["]*')"
		
		LMDEBetsy="$(echo "$(echo "$DistroActual" | grep -oe 'LinuxMint["]*' -oe 'betsy["]*')" | tr -d '[[:space:]]')"
		
		Deepin15="$(echo "$(echo "$DistroActual" | grep -oe 'Deepin["]*' -oe '15.1.1["]*')" | tr -d '[[:space:]]')"
		
		KaliLinux="$(echo $DistroActual | grep -o 'Kali["]*')"
		
		#PPA
		
			key="apt-key"
			
			DistroVersion="$(lsb_release -sr)"
			
			FinalCodename="$(lsb_release -sc)"
			
			UbuntuDescription="$( echo $(lsb_release -ds) | grep -o 'Ubuntu["]*')"
			
			UniverseUbuntuPPA="
deb http://archive.ubuntu.com/ubuntu ${FinalCodename} universe
deb http://archive.ubuntu.com/ubuntu ${FinalCodename}-updates universe
deb http://security.ubuntu.com/ubuntu ${FinalCodename}-security universe"
			
			ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu ${FinalCodename} main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu ${FinalCodename} main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu ${FinalCodename} main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu ${FinalCodename} main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu ${FinalCodename} main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu ${FinalCodename} main"

		PreparandoEntorno="${negritas}${cyan}Estaré trabajando en ello, tu solo espera. Tardará un poco${null}"

		ReadyOfficialNoty="El Launcher Premium se ha descargado correctamente"
		
		ReadyOfflineNoty="El Launcher Offline se ha descargado correctamente"
        
		Nada=""
        
		ListoNoty="Listo"
        
		Termine="He terminado"
        
		AlgoSalioMal="Algo estuvo mal"
        
		AlgoSalioMalInternet="Hay algún error en su conexión a Internet"
        
		ErrorCodigo="Error código $?"
        
        Acepto="Yo acepté la licencia del programa de guekho64"
		
	# Opciones de Programas
	
		cat "/usr/bin/aria2c" > /dev/null 2>&1
		
		TempErrorVar="$?"
	
		if [ "$TempErrorVar" = "0" ]; then
            
             get="aria2c"
			 GetMode="-o"
			 NoCheckCert="--check-certificate=false"
			 
         else
            
             get="wget"
             GetMode="-O"
			 NoCheckCert="--no-check-certificate"
            
         fi;
	
		cat "/usr/bin/apt-fast" > /dev/null 2>&1
		
		TempErrorVar="$?"
	
		if [ "$TempErrorVar" = "0" ]; then
            
			 apt="apt-fast"
			 
		else
		
			 apt="apt-get"
            
         fi;
		 
# Variables de Lenguaje

    # Español

        # Mensaje Inicial
        
            Msg_Inicio="${negritas}Para cualquier asunto relacionado al programa, contácte al desarrollador:${null}"
            
            Email="${negritas}${cyan}guekho64@gmail.com${null}"
			
		# Iconos
		
			ExecutableScriptIcon="gnome-run"

			ErrorDialog="list-remove"

			OkDialog="list-add"

			InstalledPackageIcon="gnome-stock-mail-fwd"
            
        # Acciones
		
			Lema="${cyan}${negritas}Si quieres que algo salga bien, ¡Házlo tu mismo! ${blanco}**Lema de guekho64**${null}"
			
			Publicidad="${verde}${negritas}¡No olvides susbcribirte a mi canal, o darle like a mis vídeos, ya sabes, cualquier aporte es bueno! ¡Recomienda este instalador a más linuxeros! El propósito de este instalador no es exactamente la fama, sino ayudar a quienes han elegido el camino hacia un Sistema Operativo más abierto. Por ello pongo a disposición de la gente este instalador, para todos los que no puedan instalar Minecraft en Ubuntu.${null}"
			
			Publicidad1="${negritas}${rojo}Canal de YouTube:${blanco} https://www.youtube.com/user/guekho64 ${null}"
			
			Publicidad2="${negritas}Igual puedes buscarme en: ${rojo}Google / ${cyan}Twitter / ${azul}Facebook / ${blanco}3D${rojo}juegos / ${verde}http://guekho64.webs.com/ / ${rojo}Google+ ${null}"
			
			Publicidad3="${amarillo}${negritas}Si por alguna razón los íconos no se muestran correctamente,espera un poco.Si no, cerrar sesión y volver debería solucionarlo o también puedes reiniciar tu PC${null}"
			
			PublicidadFinal="${azul}${negritas}Bueno, ahora que ha leído esto, presione ${negritas}${verde}ENTER${null} ${azul}${negritas}para salir${null}"
			
			FirstMyMessage="La Instalación ha Finalizado"
			
			MyMessage="Instalador de Minecraft de guekho64 © 2016"
			
			Aviso="${verde}${negritas}Podrás encontrar Minecraft en tu escritorio o en el menú de inicio${null}"
			
			WaitingDestinoRapido="${negritas}${cyan}Esto va a tardar un buen rato, dependiendo de tu velocidad de Internet...${null}"
			
			WaitingDestinoRapido1="${negritas}${cyan}Ya falta poco...${null}"

			InfinalityText="${negritas}${verde}Seleccione el tipo de ${negritas}${cyan}Look${null}${negritas}${verde}de fuente que le gustaría tener${null}"

			Nope_Carpetas_Never="${negritas}${amarillo}y no se le volverá a preguntar sobre esto${null}"

			InfinalityText1="${negritas}${amarillo}Personalmente recomiendo el estilo 4 o el 5${null}"
			
			QEligeTuDestino="${negritas}${cyan}Ahora podrás elegir tu método de Instalación${null}"

			QEligeTuDestino2="${negritas}${Simbolo} ${negritas}${verde}El método \"${negritas}${amarillo}Rápido${negritas}${verde}\" usa los ajustes que considero más adecuados y confiables${null}"

			QEligeTuDestino3="${negritas}${Simbolo} ${negritas}${blanco}El método \"${negritas}${azul}Personalizado${negritas}${blanco}\" deja que tu configures cada detalle de los ajustes${null}"

			QEligeTuDestino4="${negritas}${cyan}¿Cuál eliges?${null}"
		
			QNoty="${negritas}${cyan}¿Le gustaría activar las notificaciones del programa?${null}"

			QNoty1="${negritas}${blanco}Muchos otros programas hacen uso de ellas, así que es${null}"

			QNoty2="${negritas}${blanco}muy probable que tarde o temprano termine instalándolas de todos modos...${null}"

			ActiveNoty="${negritas}${verde}Notificaciones de escritorio: ${cyan}Activadas${null}"
			
			DeactiveNoty="${negritas}${verde}Notificaciones de escritorio: ${rojo}Desactivadas${null}"

			NotyNope="${negritas}${amarillo}Las Notificaciones de escritorio no serán activadas...${null}"
			
			NotyNever="${negritas}${amarillo}Las Notificaciones de escritorio no serán activadas${null}"
			
			NotyNever1="${negritas}${rojo}y no se le volverá a preguntar nunca más${null}"

			TituloNoty="${negritas}Entonces...${negritas}${verde}¿Las activo?${null}"

			EsperaNoty="${negritas}${verde}Esto va a tardar un poquito...${null}"
			
			WaitingPremium="${verde}${negritas}Descargando Launcher Premium...${null}"
			
			WaitingOffline="${verde}${negritas}Descargando Launcher Offline...${null}"

			ReadyPremium="${verde}${negritas}Se ha descargado el Launcher Premium correctamente${null}"
			
			ReadyPremiumNoty="Se ha descargado el Launcher Premium correctamente"

			MinecraftOfflineMsg="${negritas}${rojo}ADVERTENCIA:${null} ${negritas}${blanco}No pulse Control + C para pegar texto,pues eso cerrará el programa${null}"

			MinecraftOfflineMsg1="${negritas}${amarillo}En su lugar, dé click derecho a la terminal y seleccione "Pegar"${null}"

			MinecraftOfflineMsg2="${negritas}${verde}Pegue el Link Directo de descarga de su launcher preferido"

			WaitingOffline="${verde}${negritas}Descargando Launcher Offline...${null}"

			ReadyOffline="${verde}${negritas}Se ha descargado el Launcher Offline correctamente${null}"
			
            Premium="Premium"
            
            Offline="Offline"
            
            Marcadas="${negritas}${cyan}Marcadas:${null}"

            Ninguna="Ninguna"
            
            DobleSeleccion="${negritas}${blanco}
            
Al elegir dos veces una opción, está será desmarcada${null}

            
${negritas}${verde}Presione ${cyan}${negritas}ENTER ${verde}${negritas}al terminar${null}

            
${negritas}Seleccione una opción:${null}"
            
            
            PingPongRe="${negritas}Volviendo a verificar la conexión a internet${null}"

            SeleccionaLauncher="${negritas}${blanco}A continuación podrás elegir que Launchers se descargarán${null}"
        
            GitHubWebPage="https://github.com/guekho64/Minecraft-Installer-for-Ubuntu"
            
			NotyAcabado="Ya acabé"

			SpecialNoty="¡Ya instalé las notificaciones de escritorio!"

            DialogoInstalador1="${negritas}${verde}¡Bienvenido al Instalador de Minecraft de guekho64!${null}"
            
            DialogoInstalador3="${negritas}${cyan}El objetivo de este programa, es facilitar la instalación${null}"
            
            DialogoInstalador4="${negritas}${cyan}de Minecraft en computadoras que usen, ya sea ${null}"
            
            DialogoInstalador5="${negritas}${blanco}Debian ${negritas}${cyan}o ${amarillo}${negritas}Ubuntu${negritas}${cyan} como su Sistema Operativo, aunque igual${null}"
            
            DialogoInstalador6="${negritas}${cyan}puede ser utilizado en Distribuciones derivadas a partir de alguna de ellas${null}"
            
            DialogoInstalador7="${negritas}${cyan}Su Distribución actual: ${negritas}${blanco}${DistroActual}${null}"
            
            DialogoInstalador8="${negritas}${blanco}El programa soporta instalar hasta 2 Launchers de Minecraft de distintos tipos${null}"
            
            DialogoInstalador9="${negritas}${blanco}de diferentes tipos, como por ejemplo, un Launcher Offline + un Launcher Premium${null}"
            
            DialogoInstalador10="${negritas}${amarillo}IMPORTANTE: Al instalar dos launchers offline, el viejo será reemplazado${null}"
            
            ENTERPRESS="${verde}${negritas}Presione ${cyan}${negritas}ENTER ${verde}${negritas}para continuar${null}"
            
            Menu="${negritas}${verde}Programa de ${cyan}guekho64${verde} para Minecraft${null}"

            MenuInfoCanal="${negritas}${blanco}Para más información, visite el canal de YouTube de guekho64:${null}"

            CanalYT="${negritas}${cyan}https://www.youtube.com/user/guekho64${null}"

            TituloPRINCIPAL="${negritas}${amarillo}¿Qué desea hacer?${null}"

            Instalar="${negritas}${verde}Iniciando Instalador de Minecraft...${null}"

            Desinstalar="${negritas}${rojo}Iniciando Desinstalador de Minecraft...${null}"
            
            Advertencia="${negritas}${amarillo}Antes de continuar, por favor cierre cualquier otro programa${null}"

            Advertencia1="${negritas}${amarillo}que pueda llegar a interferir con el programa de instalación${null}"

            Advertencia2="${negritas}${blanco}Por ejemplo: ${negritas}${cyan}Otras terminales y programas, como instaladores o actualizadores${null}"
            
            Msg_Contra="${morado}${negritas}Introduzca su contraseña para continuar${null}"
            
            Listo="${amarillo}${negritas}¡Listo!${null}"
            
            Mini_Listo="${amarillo}ok${null}"
            
            PingPong="${negritas}Probando conexión a Internet...${null}"
            
            ErrorPingPong="${negritas}Al parecer usted no está conectado a Internet${null}"
            
            BeHappyPingPong="${negritas}Conèctese a Internet y vuelva a Intentarlo...${null}"
            
            Error="${rojo}${negritas}Cerrando el programa...${null}"
            
            NoPasswd="${amarillo}${negritas}Para correr el programa, se necesita su contraseña${null}"
            
            GoodPasswd="${negritas}${cyan}La contraseña es correcta${null}"
            
            IncorrectPasswd="${negritas}${amarillo}La contraseña es incorrecta${null}"
            
            Espera="${negritas}${cyan}Trabajando. Esto llevará tiempo${null}"
            
            Noty="${negritas}${verde}Si tienes las notificaciones activadas,serás notificado cuando esto termine ${null}"
            
         # Acciones: Menú Especial
         
            # Función: Color
		
            Color () {

                        echo "\033[$1m"

            }
            
            # Función: Color FIN
         
            options=("$(echo "$(printf "$(Color "33;1")"Premium${null})")" "$(echo "${negritas}$(printf "$(Color "38;5;159;48;1")"Offline${null})")")
            OpcionesDisponibles="${negritas}${cyan}Opciones Disponibles:${null}"

            mensaje="${negritas}${blanco}
Al elegir dos veces una opción, esta será desmarcada. ${subrayado}${negritas}${blanco}Puedes elegir ambas${null}

$ENTERPRESS

${negritas}${cyan}Seleccione una opción:${null}"

            OpcionInvalida="${negritas}${rojo}
Opción Inválida: $num${null}"

            Marcadas=""
            Ninguna=""
            
        # Acciones: Menú Especial FIN
            
        # Numeración: Nope_Carpetas
        
            Nope_Carpetas1="${negritas}${verde}No se generará ninguna carpeta adicional${null}"

            Nope_Carpetas2="${negritas}${verde}Desgraciadamente no podré colocar íconos en su escritorio${null}"
            
        # Variables Universales de Lenguaje de: "Menu Simple"
        
            SeleccioneOpcion="${negritas}${blanco}
Seleccione una Opción:${null}"

            Opciones=("${negritas}${verde}Si${null}" "${negritas}${rojo}No${null}")
			
			Opciones3=("${negritas}${verde}Si${null}" "${negritas}${amarillo}No${null}" "${negritas}${rojo}Nunca${null}")
            
            Rspsta="$(echo "${negritas}${cyan}
Has elegido:${null}" )"

            Nulo="${negritas}${rojo}
Opción Inválida${null}"

            # Numeración
            
                Titulo1="${verde}${negritas}¿Desea que el programa genere dichas carpetas por usted?${null}"
				
			# PPA
			
				ZuluOptionalPPA="
deb http://repos.azulsystems.com/ubuntu stable main"

				InfinalityForcePPA="
deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu precise main"

				AptFastForcePPA="
deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu precise main"

				FallbackMainUniversePPA="
deb http://mirrors.kernel.org/ubuntu precise main universe
deb http://mirrors.kernel.org/ubuntu precise-security main universe"

        # Post-Inicio
        
            PstInicio1="${Verde}${negritas}Por alguna extraña razón, hace falta cierto archivo común, y es el que${null}"
			
            PstInicio2="${Verde}${negritas}determina la ubicación de ciertas carpetas que el programa utiliza, además de${null}"
			
            PstInicio3="${Verde}${negritas}que muchas otras aplicaciones, hacen uso de estas carpetas, creyendo que existen${null}"
			
            PstInicio4="${amarillo}${negritas}Probablemente sea solo un error del programa,pero si usted está conciente de que${null}"
			
         	PstInicio5="${amarillo}${negritas}su carpeta personal carece de folders que son habituales, como las carpetas${null}"
			
            PstInicio6="${amarillo}${negritas}de Descargas o del Escritorio, puede dejar que el programa tome las acciones${null}"
			
            PstInicio7="${amarillo}${negritas}para poder crear las carpetas faltantes por usted, evitando así futuros errores${null}"
            
# Procesos Extra

	if [ "$DebianLinux" = "Debian" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main"

	fi

	if [ "$LMDEBetsy" = "LinuxMintbetsy" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main"

	fi

	if [ "$Deepin15" = "Deepin15.1.1" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main"

	fi
	
	if [ "$KaliLinux" = "Kali" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main"

	fi
	
	if [ "$FinalCodename" = "xenial" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu xenial main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu xenial main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu xenial main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu xenial main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu xenial main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu xenial main

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main"
			
	fi
	
	if [ "$LinuxMint17" = "LinuxMint17" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu trusty main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main 

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main"

	fi
	
	if [ "$LinuxMint13" = "LinuxMint13" ]; then
	
		ListFile="deb http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu precise main
deb-src http://ppa.launchpad.net/no1wantdthisname/openjdk-fontfix/ubuntu precise main

deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu precise main 
deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu precise main

deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu precise main
deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu precise main"

	fi

# Funciones Universales

	    # Barra de Progreso, gracias a Teddy Skarin por esta pieza de código
    
        # Author : Teddy Skarin, colors added by guekho64

        # 1. Create ProgressBar function
        # 1.1 Input is currentState($1) and totalState($2)
        
        hcentroProgressBar () {

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

                echo -ne "$spaces$line"'\r'

                done

            }
        
        ProgressBar () {
		
        # Process data
	        let _progress=(${1}*100/${2}*100)/100
	        let _done=(${_progress}*4)/10
	        let _left=40-$_done
        # Build progressbar string lengths
	        _done=$(printf "%${_done}s")
	        _left=$(printf "%${_left}s")
			
		if [ "${Cool}" = "UTF-8" ]; then
		
			LineaDeProgreso="\r${negritas}${cyan}Progreso : ${negritas}${blanco}[${_done// /${negritas}>}${_left// /-}${negritas}${blanco}]${negritas}${cyan}${_progress}%${null}"
			
		else
		
			LineaDeProgreso="\r${negritas}${cyan}Progreso : ${negritas}${blanco}[${_done// /${negritas}#}${_left// /-}${negritas}${blanco}]${negritas}${cyan}${_progress}%${null}"
			
		fi

        # 1.2 Build progressbar strings and print the ProgressBar line
        # 1.2.1 Output example:
        # 1.2.1.1 Progress : [########################################] 100%
        hcentroProgressBar "
$LineaDeProgreso"

        }

        # Variables
        _start=1

        # This accounts as the "totalState" variable for the ProgressBar function
        _end=100
        
        Final="${_end}"
        
    # Función: Notificación OK
    
        OK () {
		
		if [ "${1}" = "${Nada}" ] ; then
		
			VarMsg="${Termine}"
			
		else
		
			VarMsg="${1}"
			
		fi
		
		if [ "${2}" = "${Nada}" ] ; then
		
			VarIcon="$OkDialog"
			
		else
		
			VarIcon="${2}"
			
		fi
		
		if [ "${3}" = "${Nada}" ] ; then
		
			VarTitle="$ListoNoty"
			
		else
		
			VarTitle="${3}"
			
		fi
        
        ( notify-send "$VarTitle" "$VarMsg" --icon="${VarIcon}" ) > /dev/null 2>&1
        
        }

    # Función: Notificación "Algo anda mal"
    
        KO () {
        
        ( notify-send "$AlgoSalioMal" "$ErrorCodigo" --icon="$ErrorDialog" ) > /dev/null 2>&1
        
        }
        

    # Atrapar Ctrl+C
    
        trap Error INT

        Error () {
        
        ( rm -R "${HOME}/.guekho64/minecraft/.secret" | tee -a "$Registro" ) > /dev/null 2>&1
        
        tput reset
        KO
        hcentro "$Error"
        sleep 3.28
        tput reset
        exit
        
        }
		
	# Checar Programa
	
		Gettie () {
	
		if [ "$get" = "wget" ] ; then
		
			 get="wget"
             GetMode="-O"
			 NoCheckCert="--no-check-certificate"

			Get () {
	
			( "$get" --append-output="${Registro}" "$4" "$1" "${GetMode}" "$2/$3" ) > /dev/null 2>&1
	
			}
	
		elif [ "$get" = "aria2c" ] ; then
		
			 get="aria2c"
			 GetMode="-o"
			 NoCheckCert="--check-certificate=false"

			Get () {
	
			( ( "$get" "$1" "${GetMode}" "$3" -d "$2" $4 ) >> "$Registro" )
	
			}
	
		else

			Error
	
		fi
		
		}
		
		Gettie
		
	# Get "DeDondeSale" "DirectorioAlQueSale" "NombreDeDondeVaASalir" "Certificado: SI / NO"
		
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
    
        # Menú Simple
            
            Menu_Simple () {

			if [ "$2" = "$Nada" ]; then
			
				echo "" > /dev/null 2>&1
				
			else
			
				Opt2="$2"
				
			fi

			if [ "$3" = "$Nada" ]; then
			
				echo "" > /dev/null 2>&1
				
			else
			
				Opt3="$3"		
				
				unset Opciones
				
				Opciones=("$Opt2" "$Opt3")
				
			fi

            T="${Titulo}"
            
            
            hcentro "$T"
            PS3="$SeleccioneOpcion "
            select opt in "${Opciones[@]}"; do 

                case "$REPLY" in

                1 ) echo "$Rspsta $opt" && eval Respuesta$1="Si" && sleep 1.64 && tput reset;;
                2 ) echo "$Rspsta $opt" && eval Respuesta$1="No" && sleep 1.64 && tput reset;;

                *) echo "${Nulo}";continue;;

                esac
                break

            done
            
            }
			
		# Menú Simple de 3 entradas
		
			Menu_3 () {

			if [ "$2" = "$Nada" ]; then
			
				echo "" > /dev/null 2>&1
				
			else
			
				3Opt2="$2"
				
			fi

			if [ "$3" = "$Nada" ]; then
			
				echo "" > /dev/null 2>&1
				
			else
			
				3Opt3="$3"
				
			fi

			if [ "$4" = "$Nada" ]; then
			
				echo "" > /dev/null 2>&1
				
			else
			
				3Opt4="$4"		
				
				unset OpcionesDe3
				
				Opciones3=("$3Opt2" "$3Opt3" "$3Opt4")
				
			fi

            T="${Titulo}"
            
            
            hcentro "$T"
            PS3="$SeleccioneOpcion "
            select opt in "${Opciones3[@]}"; do 

                case "$REPLY" in

                1 ) echo "$Rspsta $opt" && eval Respuesta$1="1" && sleep 1.64 && tput reset;;
                2 ) echo "$Rspsta $opt" && eval Respuesta$1="2" && sleep 1.64 && tput reset;;
                3 ) echo "$Rspsta $opt" && eval Respuesta$1="3" && sleep 1.64 && tput reset;;

                *) echo "${Nulo}";continue;;

                esac
                break

            done
            
            }
    			
        # Menú Especial
        
            Menu_Especial () {     

# Base Especial

menu () {
    hcentro "${OpcionesDisponibles}"
    echo ""
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices[i]:- }" "${options[i]}"
    done
    [[ "$msg" ]] && echo "$msg"; :
}

Read_Function () {
read -rp "$mensaje" num
}

Rd_Fctn=Read_Function

while menu && "${Rd_Fctn}" && tput reset && [[ "$num" ]]  ; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="$(printf "${OpcionInvalida}")"; continue; }
    ((num--)); msg=""
    [[ "${choices[num]}" ]] && choices[num]="" || choices[num]="${Simbolo}"
done

( printf "${Marcadas}" ; msg="${Ninguna}" )

Final_Message () {
for i in ${!options[@]}; do 
    [[ "${choices[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done 
}

Fnl_Mssg="$(Final_Message)"

#Funciones Especiales

Extracto_Offline () {
echo "${Fnl_Mssg}" |  grep -o 'Offline["]*'
}

Extracto_Premium () {
echo "${Fnl_Mssg}" |  grep -o 'Premium["]*'
}

Extracto_Ambos () {
echo "${Fnl_Mssg}" | grep -oe 'Premium["]*' -oe 'Offline["]*'
}

Ext_O=$(Extracto_Offline)
Ext_P=$(Extracto_Premium)
Ext_A1=$(Extracto_Ambos)

Ext_A=$(echo $Ext_A1)

if  [ "$Ext_A" = "Premium Offline" ]  ; then

        tput reset
        Instalacion="Ambos"
        
elif [ "$Ext_O" = "Offline" ]  ; then

        tput reset
        Instalacion="Offline"
        
elif [ "$Ext_P" = "Premium" ]  ; then

        tput reset
        Instalacion="Premium"
        
else
       
       Error
fi        

}

# Funciones Universales FINAL

        # Procedimiento
        
            cat "${ArchivoDeLicenciaAceptada}" > /dev/null 2>&1

            if [ $? -ne 0 ]; then
            
                hcentro "${TituloDeLaLicencia}"
                hcentro "${TituloDeLaLicencia1}"
                echo ""
                hcentro "$ENTERPRESS"
                read
                tput reset
                
                ( xdg-open "${Directorio}/COPYING.txt" > /dev/null 2>&1 ) &
                
                n=LICENCIA
                eval Titulo="\$"Titulo${n}""
              
                Menu_Simple "${n}"
                
                if [ "$RespuestaLICENCIA" = "Si" ]; then
                
                     ( mkdir -v -p "${HOME}/.config/guekho64/MinecraftInstaller/" ) > /dev/null 2>&1
                     ( touch "${ArchivoDeLicenciaAceptada}" ) > /dev/null 2>&1
                     ( printf "$Acepto" ) > "${ArchivoDeLicenciaAceptada}"
                     ( chmod 444 "${ArchivoDeLicenciaAceptada}" )
                    
                elif [ "$RespuestaLICENCIA" = "No" ]; then
                
                        tput reset
                        hcentro "$LICENCE_NO"
                        hcentro "$LICENCE_NO1"
                        sleep 3.28
                        exit
                    
                else
                
                        tput reset
                        hcentro "$Why"
                        sleep 3.28
                        exit
                    
                fi
           
           else
           
                echo ""
                tput reset
                hcentro "$Licencia_Yay"
                hcentro "$Licencia_Yay1"
                sleep 6.4
                tput reset
            fi
           
        
                    
                    

# Apartado de Funciones

    # Función: ¡Listo!
    
        Listo () {
        
        hcentro "$Listo"
        sleep 0.64
        
        }

    # Función: ¡Mini-Listo! # Depreciated
    
        Mini_Listo () {
        
        printf %s "$Mini_Listo"
        sleep 0.64
        
        }
		
    # Función: Atrapar error de ping
    
        PingPongError () {
        
        ( rm -R "${HOME}/.guekho64/minecraft/.secret" | tee -a "$Registro" ) > /dev/null 2>&1
        
        tput reset
        hcentro "$ErrorPingPong"
        sleep 3.28
        tput reset
        hcentro "$BeHappyPingPong"
        sleep 3.28
        tput reset
        exit
        
        }
        
    # Función: Checar Error
    
        CheckError () {
        
        if [ $? -ne 0 ]; then 
            
            Error
            
#        else

#            Mini_Listo

        fi;
        
        }
        
        
    # Contraseña
    
        # Método de Introducción
        
            cat "${Zenity}" > /dev/null 2>&1

            if [ "$?" -ne "0" ]; then
            
                hcentro "$Msg_Contra"
                echo ""
                read Passwd

            else
			
				if [ "$OverrideZenity" = "1" ]; then
            
					hcentro "$Msg_Contra"
					echo ""
					read Passwd
					
				elif [ "$OverrideZenity" = "0" ]; then

					hcentro "$Msg_Contra" &
				
					# Un extraño método para suprimir cierto molesto aviso de Zenity
				
					ZenityWarningRemoveMethod () { Passwd="$(zenity --title "$Msg_Contra_Zenity" --password --window-icon="$ExecutableScriptIcon" )" ; }
				
					ZenityWarningRemoveMethod > /dev/null 2>&1
				
				fi
				
			fi
            
        # Función: autosudo            
    
        autosudo () {
        
        echo "$Passwd" | sudo -S "$@"
        
        }
        
        # Función: Registrador
        
        Registrador () {
        
        tee -a "$Registro"
        
        }
		
		# Función: Busca
		
		Busca () {

        cat "${1}" > /dev/null 2>&1
		
		ErrVar="${?}"
		
		SearchCrit=$( echo "${@}" |  grep -o '\-c["]*' )
		
		if [ "${SearchCrit}" = "-c" ]; then
		
			Fail () {  Error ; }
			
			
		else
		
			Fail () {  ( echo "Error" )  > /dev/null 2>&1 ; }
		
		fi
        
        if [ "${ErrVar}" -ne 0 ]; then
        
        Fail
        
        if [ "$3" = "" ] ; then
        
          sleep 0
          
        else
        
				sleep "${3}"
        
        fi


        fi
        
        }
		
		# Funciones de Launchers
		
		Premium () {

		tput reset
		
		Estado=Premium
		
		hcentro "${WaitingPremium}"
		echo ""
		hcentro "${Noty}"
		echo ""
		ProgressBar "0" "$Final"
		rm "${LauncherPremium}"/Minecraft.jar > /dev/null 2>&1
		Get "${MinecraftPremiumJarDownload}" "${LauncherPremium}" "Minecraft.jar"
		Busca "${LauncherPremium}"/Minecraft.jar -c
		ProgressBar "100" "${Final}"
		sleep 1.64
		tput reset
		hcentro "${ReadyPremium}"
		OK "${ReadyPremiumNoty}"
		sleep 2.46
		tput reset
		
}

		Offline () {

		tput reset
		
		Estado=Offline
		
		hcentro "${MinecraftOfflineMsg}"
		echo ""
		hcentro "${MinecraftOfflineMsg1}"
		echo ""
		hcentro "${MinecraftOfflineMsg2}"
		echo ""
		hcentro "${Noty}"
		echo ""
		
		read MinecraftOfflineJarDownload
		
		tput reset
		hcentro "${WaitingOffline}"
		echo ""
		hcentro "${Noty}"
		echo ""
		ProgressBar "0" "$Final"
		rm "${LauncherOffline}"/Minecraft.jar > /dev/null 2>&1
		Get "${MinecraftOfflineJarDownload}" "${LauncherOffline}" "Minecraft.jar" "$NoCheckCert"
		Busca "${LauncherOffline}"/Minecraft.jar -c
		ProgressBar "100" "${Final}"
		sleep 1.64
		tput reset
		hcentro "${ReadyOffline}"
		OK "${ReadyOfflineNoty}"
		sleep 2.46
		tput reset
		
}

		Ambos () {
		
		tput reset
		
		Estado=Ambos
		
		hcentro "${WaitingPremium}"
		echo ""
		hcentro "${Noty}"
		echo ""
		rm "${LauncherPremium}"/Minecraft.jar > /dev/null 2>&1
		ProgressBar "0" "$Final"
		Get "${MinecraftPremiumJarDownload}" "${LauncherPremium}" "Minecraft.jar"
		Busca "${LauncherPremium}"/Minecraft.jar -c
		ProgressBar "50" "$Final"
		sleep 1.28
		tput reset
		hcentro "${ReadyPremium}"
		OK "${ReadyPremiumNoty}"
		sleep 2.46
		tput reset
		
		hcentro "${MinecraftOfflineMsg}"
		echo ""
		hcentro "${MinecraftOfflineMsg1}"
		echo ""
		hcentro "${MinecraftOfflineMsg2}"
		echo ""
		hcentro "${Noty}"
		echo ""
		
		read MinecraftOfflineJarDownload
		
		tput reset
		hcentro "${WaitingOffline}"
		echo ""
		hcentro "${Noty}"
		echo ""
		ProgressBar "50" "$Final"
		rm "${LauncherOffline}"/Minecraft.jar > /dev/null 2>&1
		Get "${MinecraftOfflineJarDownload}" "${LauncherOffline}" "Minecraft.jar" "$NoCheckCert"
		Busca "${LauncherOffline}"/Minecraft.jar -c
		ProgressBar "100" "${Final}"
		sleep 1.64
		tput reset
		hcentro "${ReadyOffline}"
		OK "${ReadyOfflineNoty}"
		sleep 2.46
		tput reset
		
		}
		
		# Función: Checar Notificaciones de Escritorio
		
		NotyCheck () {

		tput reset

		# Activar Notificaciones
			
			Busca "$NotyNopeEternal" > /dev/null 2>&1

			if [ "$ErrVar" = "0" ]; then

				tput reset
				hcentro "$DeactiveNoty"
				sleep 3.84
				
			else

				Busca "/usr/bin/notify-send" > /dev/null 2>&1

				if [ "$ErrVar" = "0" ]; then

					tput reset
					hcentro "$ActiveNoty"
					sleep 3.84
	
				else

					tput reset
					hcentro "$QNoty"
					echo ""
					hcentro "$QNoty1"
					hcentro "$QNoty2"
					echo ""

					n=Noty
    
					eval Titulo="\$"Titulo${n}""
              
					Menu_3 "${n}"
					
					if [ "$RespuestaNoty" = "1" ]; then
	
						tput reset
					
						autosudo pkill synaptic > /dev/null 2>&1
						autosudo "$apt" clean > /dev/null 2>&1
					
						hcentro "$EsperaNoty"
						echo ""
						ProgressBar "0" "$Final"
						(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
						CheckError
						ProgressBar "32" "$Final"
						(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
						(autosudo "$apt" install libnotify-bin -y >> "${Registro}") > /dev/null 2>&1
						CheckError
						ProgressBar "64" "$Final"
						(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
						CheckError
						ProgressBar "100" "$Final"
		
						OK "$SpecialNoty" "$InstalledPackageIcon" "$NotyAcabado"
						echo ""
						echo ""
						Listo
		
				elif [ "$RespuestaNoty" = "2" ]; then
	
						tput reset
						hcentro "$NotyNope"
						echo ""
						hcentro "$ENTERPRESS"
						read
						tput reset
		
				elif [ "$RespuestaNoty" = "3" ]; then
			
						touch "$NotyNopeEternal" > /dev/null 2>&1
	
						tput reset
						hcentro "$NotyNever"
						hcentro "$NotyNever1"
						echo ""
						hcentro "$ENTERPRESS"
						read
						tput reset
		
				fi
		
			fi
				
		fi
		
		}
		
		# Función: Vientos de Hyrule ( Easter Egg )
		
		Hyrulean_Winds () {

			autosudo pkill synaptic > /dev/null 2>&1
			autosudo "$apt" clean > /dev/null 2>&1
	
			tput reset
	
			Destino="Rápido"
	
			hcentro "$WaitingDestinoRapido"
			echo ""
			hcentro "$Noty"
			echo ""
			ProgressBar "10" "$Final"
			(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
			CheckError
			ProgressBar "20" "$Final"	
			(autosudo "$key" adv --keyserver keyserver.ubuntu.com --recv-keys E985B27B >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "30" "$Final"	
			(autosudo "$key" adv --keyserver keyserver.ubuntu.com --recv-keys DC058F40 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "40" "$Final"

			# Dead 

			ProgressBar "50" "$Final"
			( printf "$ListFile" >  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			# If necessary
			
			if [ "$UbuntuDescription" = "Ubuntu" ]; then
			
				Universe > /dev/null 2>&1
			
				if [ "$Universe" = "universe" ]; then
				
					echo "" > /dev/null 2>&1
					
				else
					
					ProgressBar "51" "$Final"
					( printf "$UniverseUbuntuPPA" >> "$Secret"/Temp.list ) > /dev/null 2>&1
					
				fi

			fi
			
			if [ "$DebianLinux" = "Debian" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			elif [ "$LMDEBetsy" = "LinuxMintbetsy" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			elif [ "$Ubuntu12" = "Ubuntu12" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			elif [ "$Ubuntu13" = "Ubuntu13" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			elif [ "$Deepin15" = "Deepin15.1.1" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			elif [ "$LinuxMint13" = "LinuxMint13" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1
			
			elif [ "$KaliLinux" = "Kali" ]; then
			
			ProgressBar "53" "$Final"			
			(autosudo "$key" adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 >> "${Registro}")  > /dev/null 2>&1
			CheckError
			ProgressBar "57" "$Final"
			( printf "$ZuluOptionalPPA" >>  "$Secret"/Temp.list ) > /dev/null 2>&1

			fi
			
			( autosudo mv -f "$Secret"/Temp.list "$AptListFiles"/guekho64.list ) > /dev/null 2>&1
			ProgressBar "60" "$Final"
			(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
			ProgressBar "70" "$Final"
			
			# Si es necesario...
			
			BuscaAria2 > /dev/null 2>&1
			
			if [ "$BuscaAria2" = "$Nada" ]; then
			
				( cp -f "$AptListFiles"/guekho64.list "$Secret"/Temp.list ) > /dev/null 2>&1
				( autosudo chmod 777 "$Secret"/Temp.list ) > /dev/null 2>&1
				( printf "$FallbackMainUniversePPA" >> "$Secret"/Temp.list ) > /dev/null 2>&1
				
				MainUniverseStatus="Si"
				
				( autosudo mv -f "$Secret"/Temp.list "$AptListFiles"/guekho64.list ) > /dev/null 2>&1
				(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
				(autosudo "$apt" install --reinstall aria2 -y >> "${Registro}") > /dev/null 2>&1
				
			fi
			
			BuscaAptFast > /dev/null 2>&1
			
			if [ "$BuscaAptFast" = "$Nada" ]; then
			
				( cp -f "$AptListFiles"/guekho64.list "$Secret"/Temp.list ) > /dev/null 2>&1
				( autosudo chmod 777 "$Secret"/Temp.list ) > /dev/null 2>&1
				( printf "$AptFastForcePPA" >> "$Secret"/Temp.list ) > /dev/null 2>&1
				( autosudo mv -f "$Secret"/Temp.list "$AptListFiles"/guekho64.list ) > /dev/null 2>&1
				( autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
				
			fi
			
			(autosudo DEBIAN_FRONTEND=noninteractive "$apt" install apt-fast -y >> "${Registro}") > /dev/null 2>&1
			CheckError
	
			apt="apt-fast"
			get="aria2c"
			
			Gettie
	
			ProgressBar "80" "$Final"
			
			# If necessary
			
			BuscaInfinality > /dev/null 2>&1
			
			if [ "$BuscaInfinality" = "$Nada" ]; then
			
				( cp -f "$AptListFiles"/guekho64.list "$Secret"/Temp.list ) > /dev/null 2>&1
				( autosudo chmod 777 "$Secret"/Temp.list ) > /dev/null 2>&1
				( printf "$InfinalityForcePPA" >> "$Secret"/Temp.list ) > /dev/null 2>&1
				( autosudo mv -f "$Secret"/Temp.list "$AptListFiles"/guekho64.list ) > /dev/null 2>&1
				(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
				(autosudo "$apt" install --reinstall fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
				
			fi
			
			if [ "$DebianLinux" = "Debian" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"
			
			elif [ "$LinuxMint13" = "LinuxMint13" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"
			
			elif [ "$LMDEBetsy" = "LinuxMintbetsy" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"
			
			elif [ "$Ubuntu12" = "Ubuntu12" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"
			
			elif [ "$Ubuntu13" = "Ubuntu13" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"
			
			elif [ "$Deepin15" = "Deepin15.1.1" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"
			
			elif [ "$KaliLinux" = "Kali" ]; then
			
			(autosudo "$apt" install zulu-8 fontconfig-infinality -y >> "${Registro}") > /dev/null 2>&1
			
			JavaVar="zulu-8"

			else
			
			ProgressBar "85" "$Final"
			( touch "$PreferencesFile")  > /dev/null 2>&1
			( printf "$OverrideForJava" >  "$PreferencesFile" )  > /dev/null 2>&1
			( autosudo mv -f "$PreferencesFile" "$PreferencesFileDest" )  > /dev/null 2>&1
			(autosudo "$apt" install fontconfig-infinality openjdk-8-jre openjdk-8-jre-headless -y >> "${Registro}") > /dev/null 2>&1

			fi
			
			if [ "$JavaVar" = "zulu-8" ]; then
			
				JVM="Zulu-8"
			
			else
			
				JVM="Unofficial-8"

			fi
			
			ProgressBar "90" "$Final"
			(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
			
			ProgressBar "93" "$Final"
			
			if [ "$JVM" = "Unofficial-8" ]; then
			
				BuscaJava8OpenJdk > /dev/null 2>&1
			
				if [ "$BuscaJava8OpenJdk" = "$Nada" ]; then
				
					ProgressBar "94" "$Final"
					
					if [ "$MainUniverseStatus" != "Si" ]; then
					
						( cp -f "$AptListFiles"/guekho64.list "$Secret"/Temp.list ) > /dev/null 2>&1
						( autosudo chmod 777 "$Secret"/Temp.list ) > /dev/null 2>&1
						( printf "$FallbackMainUniversePPA" >> "$Secret"/Temp.list ) > /dev/null 2>&1
						( autosudo mv -f "$Secret"/Temp.list "$AptListFiles"/guekho64.list ) > /dev/null 2>&1
						(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
						
					fi
					
					(autosudo "$apt" install openjdk-7-jre openjdk-7-jre-headless -y >> "${Registro}") > /dev/null 2>&1
					Busca /usr/lib/jvm/java-7-openjdk-*/jre/bin/java -c > /dev/null 2>&1
					
					JVM="Official-7"
					
				fi
				
			fi
			
			if [ "$JVM" = "Zulu-8" ]; then
			
				BuscaZulu8 > /dev/null 2>&1
			
				if [ "$BuscaZulu8" = "$Nada" ]; then
				
					ProgressBar "94" "$Final"
					
					if [ "$MainUniverseStatus" != "Si" ]; then
					
						( cp -f "$AptListFiles"/guekho64.list "$Secret"/Temp.list ) > /dev/null 2>&1
						( autosudo chmod 777 "$Secret"/Temp.list ) > /dev/null 2>&1
						( printf "$FallbackMainUniversePPA" >> "$Secret"/Temp.list ) > /dev/null 2>&1
						( autosudo mv -f "$Secret"/Temp.list "$AptListFiles"/guekho64.list ) > /dev/null 2>&1
						(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
						
					fi
					
					(autosudo "$apt" install openjdk-7-jre openjdk-7-jre-headless -y >> "${Registro}") > /dev/null 2>&1
					Busca /usr/lib/jvm/java-7-openjdk-*/jre/bin/java -c > /dev/null 2>&1
					
					JVM="Official-7"
					
				fi
				
			fi
			
			ProgressBar "95" "$Final"
			( autosudo "$InfinalityScript" setstyle osx2 >> "${Registro}") > /dev/null 2>&1
			rm "$MinecraftIcons/Minecraft.png" > /dev/null 2>&1
			Get "$MinecraftIcon" "$MinecraftIcons" "Minecraft.png"
			Busca "$MinecraftIcons/Minecraft.png" -c
			( autosudo ln --symbolic "$MinecraftIcons/Minecraft.png" "/usr/share/icons/" ) > /dev/null 2>&1
	
	
			ProgressBar "97" "$Final"
			
			(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
			
			ProgressBar "100" "$Final"

		}
		
		InstallMinecraft () {

			tput reset
			
			hcentro "$WaitingDestinoRapido1"
			echo ""
			hcentro "$Noty"
			echo ""
			
			ProgressBar "0" "$Final"

			if [ "$JVM" = "Unofficial-8" ]; then
			
				gtkjava='#!/bin/bash

GTKJVM="/usr/lib/jvm/java-8-openjdk-*/jre/bin/java"
SPECIAL_ARGS="-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

exec $GTKJVM "$SPECIAL_ARGS"  "$@" >&2'
				
			elif [ "$JVM" = "Zulu-8" ]; then
			
				gtkjava='#!/bin/bash

GTKJVM="/usr/lib/jvm/zulu-8-*/jre/bin/java"
SPECIAL_ARGS="-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

exec $GTKJVM "$SPECIAL_ARGS"  "$@" >&2'
				
			elif [ "$JVM" = "Official-7" ]; then
			
				gtkjava='#!/bin/bash

GTKJVM="/usr/lib/jvm/java-7-openjdk-*/jre/bin/java"
SPECIAL_ARGS="-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

exec $GTKJVM "$SPECIAL_ARGS"  "$@" >&2'
				
			else
			
				Error
				
			fi
			
			ProgressBar "8" "$Final"
			
			( printf "$gtkjava" >  "$TempGtkjava" ) > /dev/null 2>&1
			
			ProgressBar "16" "$Final"
			
			( chmod +x "$TempGtkjava" ) > /dev/null 2>&1
			
			ProgressBar "24" "$Final"
			
			( autosudo mv -f "$TempGtkjava" "$DestGtkjava" ) > /dev/null 2>&1
			
			ProgressBar "32" "$Final"
			
			if [ "$Estado" = "Ambos" ]; then
			
				Minecraft_Icon_Premium='[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Premium
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=Minecraft
Exec=minecraft-premium
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false'
			
				Minecraft_Icon_Offline='[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Offline
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=Minecraft
Exec=minecraft-offline
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false'

				MinecraftPremium="gtkjava -jar $MinecraftPremiumJar"
				MinecraftOffline="gtkjava -jar $MinecraftOfflineJar"
			
			ProgressBar "40" "$Final"
			
			( printf "$MinecraftPremium" >  "$Tempminecraftpremium" ) > /dev/null 2>&1
			( printf "$MinecraftOffline" >  "$Tempminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "48" "$Final"
			
			( chmod +x "$Tempminecraftpremium" ) > /dev/null 2>&1
			( chmod +x "$Tempminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "56" "$Final"
			
			( autosudo mv -f "$Tempminecraftpremium" "$Bin" ) > /dev/null 2>&1
			CheckError
			( autosudo mv -f "$Tempminecraftoffline" "$Bin" ) > /dev/null 2>&1
			CheckError
			
			ProgressBar "64" "$Final"
			
				#Desktop File
			
			ProgressBar "72" "$Final"
			
			( printf "$Minecraft_Icon_Premium" >  "$Desktopminecraftpremium" ) > /dev/null 2>&1
			( printf "$Minecraft_Icon_Offline" >  "$Desktopminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "80" "$Final"
			
			( chmod +x "$Desktopminecraftpremium" ) > /dev/null 2>&1
			( chmod +x "$Desktopminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "90" "$Final"
			
			( cp -f "$Desktopminecraftpremium" "$Escritorio" ) > /dev/null 2>&1
			( cp -f "$Desktopminecraftoffline" "$Escritorio" ) > /dev/null 2>&1
			
			( autosudo mv -f "$Desktopminecraftpremium" "$UniversalAppsDir" ) > /dev/null 2>&1
			CheckError
			( autosudo mv -f "$Desktopminecraftoffline" "$UniversalAppsDir" ) > /dev/null 2>&1
			CheckError
			
			ProgressBar "100" "$Final"
			
			elif [ "$Estado" = "Premium" ]; then
			
				Minecraft_Icon_Premium='[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Premium
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=Minecraft
Exec=minecraft-premium
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false'

				MinecraftPremium="gtkjava -jar $MinecraftPremiumJar"
			
			ProgressBar "40" "$Final"
			
			( printf "$MinecraftPremium" >  "$Tempminecraftpremium" ) > /dev/null 2>&1
			
			ProgressBar "48" "$Final"
			
			( chmod +x "$Tempminecraftpremium" ) > /dev/null 2>&1
			
			ProgressBar "56" "$Final"
			
			( autosudo mv -f "$Tempminecraftpremium" "$Bin" ) > /dev/null 2>&1
			
			CheckError
			
			ProgressBar "64" "$Final"
			
				#Desktop File
			
			ProgressBar "72" "$Final"
			
			( printf "$Minecraft_Icon_Premium" >  "$Desktopminecraftpremium" ) > /dev/null 2>&1
			
			ProgressBar "80" "$Final"
			
			( chmod +x "$Desktopminecraftpremium" ) > /dev/null 2>&1
			
			ProgressBar "90" "$Final"
			
			( cp -f "$Desktopminecraftpremium" "$Escritorio" ) > /dev/null 2>&1
			
			( autosudo mv -f "$Desktopminecraftpremium" "$UniversalAppsDir" ) > /dev/null 2>&1
			
			CheckError
			
			ProgressBar "100" "$Final"
			
			elif [ "$Estado" = "Offline" ]; then
			
				Minecraft_Icon_Offline='[Desktop Entry]
Version=1.0
Type=Application
Name=Minecraft Offline
Comment[en]=Play in a completely open world!
Comment[es]=¡Juega en un mundo totalmente abierto!
Icon=Minecraft
Exec=minecraft-offline
NoDisplay=false
Categories=Game;
StartupNotify=false
Terminal=false'

				MinecraftOffline="gtkjava -jar $MinecraftOfflineJar"
			
			ProgressBar "40" "$Final"
			
			( printf "$MinecraftOffline" >  "$Tempminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "48" "$Final"
			
			( chmod +x "$Tempminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "56" "$Final"
			
			( autosudo mv -f "$Tempminecraftoffline" "$Bin" ) > /dev/null 2>&1
			
			CheckError
			
			ProgressBar "64" "$Final"
			
				#Desktop File
			
			ProgressBar "72" "$Final"
			
			( printf "$Minecraft_Icon_Offline" >  "$Desktopminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "80" "$Final"
			
			( chmod +x "$Desktopminecraftoffline" ) > /dev/null 2>&1
			
			ProgressBar "90" "$Final"
			
			( cp -f "$Desktopminecraftoffline" "$Escritorio" ) > /dev/null 2>&1
			
			( autosudo mv -f "$Desktopminecraftoffline" "$UniversalAppsDir" ) > /dev/null 2>&1
			
			CheckError
			
			ProgressBar "100" "$Final"

			else
			
				Error
				
			fi
			
			
		tput reset
		
		hcentro "$Aviso"
		echo ""
		hcentro "$ENTERPRESS"
		read
		
		tput reset
		
		OK "$MyMessage" "Minecraft" "$FirstMyMessage" 
		
		echo "$Publicidad"
		echo ""
		hcentro "$Publicidad1"
		echo ""
		echo "$Publicidad2"
		echo ""
		echo "$Publicidad3"
		echo ""
		hcentro "$PublicidadFinal"
		
		read
		
		exit

		}
		
# INICIO SCRIPT
    
Inicio () {

tput reset

if [ "$Passwd" = "$Nada" ]; then

    tput reset
    centro "$NoPasswd"
    sleep 3.28
    echo ""
    Error
    
else

    ( echo "$Passwd" | sudo -S echo ) > /dev/null 2>&1
    
    if [ "$?" = "0" ]; then
    
        tput reset
        centro "$GoodPasswd"
        sleep 3.28
        
    else
    
		tput reset
        centro "$IncorrectPasswd"
        sleep 3.28
        Error
        
    fi
    
fi

tput reset

Busca "$Registro" > /dev/null 2>&1

if [ "${ErrVar}" -ne 0 ]; then

    touch "$Registro"
	autosudo chmod 777 "${Registro}"

else

	autosudo chmod 777 "${Registro}"
    printf "" > "$Registro"
	autosudo chmod 777 "${Registro}"
    
fi;

    tput reset

# Verificar conexión a Internet

    #Debian: Ping Bug, no es propiedad de Root. Fix
    
    autosudo chmod u+s "$(which ping)"
        
    #Debian: Ping Bug, no es propiedad de Root. Fix   FIN
    
    hcentro "$PingPong"
    ( ping -c 4 www.google.com ) >> "$Registro"
    if [ $? -ne 0 ]; then
    
    PingPongError
    
    else
    
    echo ""
    Listo
    
    fi
	
NotyCheck

tput reset

hcentro "$Msg_Inicio"
hcentro "$Email"

sleep 6.4
tput reset

    # CHECAR DIRECTORIOS EN /HOME
	
Busca "$PstInicioNeverFile" > /dev/null 2>&1

if [ "${ErrVar}" = "0" ]; then
    
Estado_xdg_user_dirs="No"

else
    
	Busca "${HOME}/.config/user-dirs.dirs" > /dev/null 2>&1

	if [ "${ErrVar}" -ne 0 ]; then 
          
         	 sleep 1.28
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
              
 	   Menu_3 "${n}"
    
 	   if  [ "$Respuesta1" = "1" ]  ; then
    
			tput reset
			hcentro "$Espera"
			hcentro "$Noty"
			echo ""
			ProgressBar "0" "$Final"
			(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
			CheckError
			ProgressBar "20" "$Final"
			(autosudo "$apt" update >> "${Registro}") > /dev/null 2>&1
			ProgressBar "40" "$Final"
			(autosudo "$apt" install xdg-user-dirs -y >> "${Registro}") > /dev/null 2>&1
			CheckError
			ProgressBar "60" "$Final"
			(autosudo "$apt" clean >> "${Registro}") > /dev/null 2>&1
			CheckError
			ProgressBar "80" "$Final"
			(xdg-user-dirs-update >> "${Registro}") > /dev/null 2>&1
			CheckError
			ProgressBar "100" "$Final"

			OK "" "$InstalledPackageIcon"
			echo ""
			echo ""
			Listo
        
			Estado_xdg_user_dirs="Si"
        
			sleep 3.2
			tput reset
    
  	  elif  [ "$Respuesta1" = "2" ]  ; then
    
			tput reset
			hcentro "$Nope_Carpetas1"
			echo ""
			hcentro "$Nope_Carpetas2"
        
			Estado_xdg_user_dirs="No"

			sleep 1.6
			echo ""
			hcentro "$ENTERPRESS"
			read
			tput reset
    
  	  elif  [ "$Respuesta1" = "3" ]  ; then
	  
	  		touch "$PstInicioNeverFile"
    
			tput reset
			hcentro "$Nope_Carpetas1"
			hcentro "$Nope_Carpetas_Never"
			echo ""
			hcentro "$Nope_Carpetas2"
        
			Estado_xdg_user_dirs="No"

			sleep 1.6
			echo ""
			hcentro "$ENTERPRESS"
			read
			tput reset
    
 	   else
    
			Error
    
   	 fi

	else

  	  Estado_xdg_user_dirs="Si"

	fi
	
fi
    
if [ "$Estado_xdg_user_dirs" = "Si" ] ; then

    desktopVar=$(cat ~/.config/user-dirs.dirs | grep "XDG_DESKTOP_DIR")
    desktopFolder=$(echo ${desktopVar/XDG_DESKTOP_DIR=/""} | tr -d '"')
    DeskFolder=${desktopFolder:6}
    Escritorio="$HOME/$DeskFolder"
    
elif [ "$Estado_xdg_user_dirs" = "No" ] ; then

    Escritorio="$HOME"
    
else
    
    Error
    
fi


    
}

# ETAPA INTERMEDIA : SCRIPT

	# ETAPA INTERMEDIA: INSTALAR / DESINSTALAR	
	
		Instalar () {

		tput reset

		echo ""
		hcentro "$DialogoInstalador1"
		echo ""
		echo ""
		hcentro "$DialogoInstalador2"
		hcentro "$DialogoInstalador3"
		hcentro "$DialogoInstalador4"
		hcentro "$DialogoInstalador5"
		hcentro "$DialogoInstalador6"
		echo ""
		hcentro "$DialogoInstalador7"
		echo ""
		hcentro "${subrayado}$DialogoInstalador8"
		echo ""
		echo ""
		echo ""
		hcentro "$ENTERPRESS"
		read

		tput reset

		hcentro "$PingPongRe"
		( ping -c 4 www.google.com.mx ) >> "$Registro"
		if [ $? -ne 0 ]; then
		    
    		PingPongError
		    
		else
		    
    		echo ""
    		Listo
		    
		fi

		tput reset

		# Operación: Crear Directorios

		( ( mkdir -v -p ~/.guekho64/minecraft/launchers/premium && mkdir -v -p ~/.guekho64/minecraft/launchers/offline && mkdir -v -p ~/.guekho64/minecraft/icons && mkdir -v -p ~/.guekho64/minecraft/desktop_files && mkdir -v -p ~/.guekho64/minecraft/.secret && mkdir -v -p ~/.local/share/applications ) | Registrador ) > /dev/null 2>&1

		hcentro "$SeleccionaLauncher"
		echo ""
		hcentro "$ENTERPRESS"
		read

		tput reset

		Menu_Especial

		if  [ "$Instalacion" = "Ambos" ] ; then
		
				tput reset
				Ambos
		
		elif  [ "$Instalacion" = "Premium" ] ; then
		
				tput reset
				Premium				
		
		elif  [ "$Instalacion" = "Offline" ] ; then

				tput reset
				Offline		
		else
		
				Error
		
		fi
		
		tput reset
		
		hcentro "$QEligeTuDestino"
		echo ""
		hcentro "$QEligeTuDestino2"
		echo ""
		hcentro "$QEligeTuDestino3"
		echo ""
		echo ""
		hcentro "$QEligeTuDestino4"
		
		n=ETD
		eval Titulo="\$"Titulo${n}""
              
		Menu_Simple "${n}" "${negritas}${amarillo}Rápido${null}" "${negritas}${azul}Personalizado${null}"
		
		if [ "$RespuestaETD" = "Si" ];then
		
			Hyrulean_Winds && InstallMinecraft
			
		elif [ "$RespuestaETD" = "No" ];then
		
			Never_Be_Alone
			
		fi
		
		
		}

		Desinstalar () {

		tput reset

		}
		
	# ETAPA INTERMEDIA: INSTALAR / DESINSTALAR FINAL

Intermedio () {

tput reset

hcentro "$Advertencia"
hcentro "$Advertencia1"
echo ""
hcentro "$Advertencia2"
echo ""
sleep 3.28
hcentro "$ENTERPRESS"
read

tput reset

autosudo pkill synaptic > /dev/null 2>&1
autosudo "$apt" clean > /dev/null 2>&1

tput reset

hcentro "$Menu"

sleep 1.1808

echo ""
hcentro "$MenuInfoCanal"
hcentro "$CanalYT"
echo ""

sleep 1.1808

n=PRINCIPAL

eval Titulo="\$"Titulo${n}""
              
Menu_Simple "${n}" "${negritas}${verde}Instalar${null}" "${negritas}${rojo}Desinstalar${null}"

if [ "$RespuestaPRINCIPAL" = "Si" ]; then

    tput reset
    centro "$Instalar"
    sleep 3.28
    tput reset
    Accion="Instalar"
    echo "" >> "$Registro"
    echo "${Accion}" >> "$Registro"
    echo "" >> "$Registro"
    tput reset
	Instalar
    
elif [ "$RespuestaPRINCIPAL" = "No" ]; then

    tput reset
    centro "$Desinstalar"
    sleep 3.28
    tput reset
    Accion="Desinstalar"
    echo "" >> "$Registro"
    echo "$Acción" >> "$Registro"
    echo "" >> "$Registro"
    tput reset
	Desinstalar
    
else

    tput reset
    Error
    
fi

}

Inicio && Intermedio
