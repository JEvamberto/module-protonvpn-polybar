#!/bin/bash
#Inicializar protonvpn-cli através do polybar

result=`ifconfig | grep proton`
if [ ! -z "$result" ]
then
  `zenity --warning --text="Desconectando da vpn"`
   output=` zenity --password | sudo -S  protonvpn d`
  `zenity --notification --text="$output"` 
else
 
 `zenity --warning --text="Irá se conectar a protonvpn!"`
  output=`zenity --password  | sudo -S protonvpn c -f`
  
   `zenity --notification --text="$output"` 
 
fi
