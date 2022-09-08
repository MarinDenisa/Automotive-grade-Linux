#!/bin/bash

run_aktualizr() {
	cd scripts
	currentDir=$(pwd)
	echo $currenDir
	#device=$(ls ../../../ota-lith/ota-ce-gen/devices | head -1)
	echo $device
	cd ../../../ota-lith/ota-ce-gen/devices/$device
	date > $currentDir/akt.out
	echo >> $currentDir/akt.out
	aktualizr -c config.toml &>>$currentDir/akt.out &
	sleep 4
	code=$(cat $currentDir/akt.out | grep code: | tail -1 | cut -d ":" -f 2)
	echo $code
	if [ $code -eq 200 ]
	then
		touch $currentDir/aktualizrIsRunning
		echo "Aktualizr running"
	else
		echo "Aktualizr throwed and error"
	fi
	
}

while getopts ":r:s" option; do
	case $option in
        r) #run aktualizr
        	device=$OPTARG
      		#echo $device
	  		run_aktualizr
		 	exit;;
		 	
      	s) #stop aktualizr
      		cd scripts
			rm aktualizrIsRunning
			echo "Aktualizr stopped"
			exit;;
			
     	\?) # Invalid option
		     echo "Error: Invalid option"
		     exit;;
	esac
done

$SHELL
