#!/bin/bash

run_aktualizr() {
	currentDir=$(pwd)
	device=$(ls ../ota-lith/ota-ce-gen/devices | head -1)
	cd ../ota-lith/ota-ce-gen/devices/$device
	date > $currentDir/akt.output
	echo >> $currentDir/akt.output
	aktualizr -c config.toml &>>$currentDir/akt.output &
	sleep 4
	code=$(cat $currentDir/akt.output | grep code: | tail -1 | cut -d ":" -f 2)
	if [ $code -eq 200 ]
	then
		echo "Aktualizr running"
	else
		echo "Aktualizr throwed and error"
	fi
	
}

run_aktualizr
