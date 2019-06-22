#!/bin/bash
echo "1: x"
echo "2: y"

read ANTWORT

if [ "$ANTWORT" == "1" ] 
	then
		clear
		#Befehl
    		
    		#
		exit
fi

if [ "$ANTWORT" == "2" ] 
	then
		clear
	  	#Befehl
    		
    		#
		exit
fi

echo "Tastatureingabe nicht im erlaubten Bereich!"
