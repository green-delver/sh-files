#!/bin/bash
VZ="$HOME/ioquake3"

echo "1: Server starten"
echo "2: Server stoppen"
echo "3: DM-Server Konsole"
echo "4: TDM-Server Konsole"
     
read ANTWORT
if [ "$ANTWORT" == "1" ]
then
	if pidof . $VZ/ioq3ded.x86_64 +exec nummer1.cfg +set net_port 27960; then 
		echo "Server läuft schon"
	else
		screen -dmS ioq3-server-1 $VZ/ioq3ded.x86_64 +exec nummer1.cfg +set net_port 27960
		screen -dmS ioq3-server-2 $VZ/ioq3ded.x86_64 +exec nummer2.cfg +set net_port 27961
	fi
	exit
fi

if [ "$ANTWORT" == "2" ]
then
	pid1=$(pidof . $VZ/ioq3ded.x86_64 +exec nummer1.cfg +set net_port 27960)
	kill $pid1

	pid2=$(pidof . $VZ/ioq3ded.x86_64 +exec nummer2.cfg +set net_port 27961)
	kill $pid2

	exit
fi

if [ "$ANTWORT" == "3" ]
then
	screen -r ioq3-server-1
	exit
fi

if [ "$ANTWORT" == "4" ]
then
	screen -r ioq3-server-2
	exit
fi


echo "Eingabe nicht ok"
