#!/bin/bash
#Author: Dani-Zsh

# Colours!
endColour="\e[0m"
redColour="\e[0;31m"
greenColour="\e[0;32m"
yellowColour="\e[0;33m"
blueColour="\e[0;34m"
purpleColour="\e[0;35m"
cianColour="\e[0;36m"
greyColour="\e[0;37m"

	

# Output
clear
cat << "EOF"
    _______           __
   / ____(_)___  ____/ /___ __   __
  / /_  / / __ \/ __  / __  / | / /
 / __/ / / / / / /_/ / /_/ /| |/ /
/_/   /_/_/ /_/\__,_/\__,_/ |___/

EOF

echo -e "\e[1mAuthor: Dani-zsh\e[0m\n"

echo -e "\e[1;34mBienvenido al buscador de archivos y directorios\e[0m"
echo "-----------------------------------------------"
echo -e "      | \e${purpleColour}Ingrese ${endColour} ${redColour}'f'${endColour} ${purpleColour} para buscar archivos${endColour}     |"

echo -e "      | \e${purpleColour}Ingrese${endColour} ${redColour} 'd'${endColour} ${purpleColour} para buscar directorios${endColour}  |"
echo "----------------------------------------------"

read -p "Seleccione una opción: " opcion
echo -e "\n"

read -p "Ingrese el nombre de búsqueda: " busqueda
echo -e "\n"   
		


# functionsp
function ctrl_c() {
	echo -e "\nsaliendo correctamente" 
exit 1
}
trap ctrl_c INT

carga_c() {
   for i in {1..50}; do
	   echo -ne "${purpleColour}.${endColour}"
	   sleep 0.030
   done
} 


case $opcion in
    f)
    echo "Buscando archivo con el nombre $busqueda..."
    carga_c
    result=$(find / -type f -name "*$busqueda*" 2>/dev/null)
    if [ -z "result" ]; then
            echo "No hay resultados"
    else
            echo -e "\nLos resultados son:"
            echo "$result"
    fi
    ;;
    d)
    echo "Buscando directorio con el nombre $busqueda..."
    result=$(find / -type d -name "*$busqueda*" 2>/dev/null)
    if [ -z "$result" ]; then
            echo "No hay resultados"
    else
            echo "Los resultados son:"
            echo "$result"
    fi
    ;;
esac



