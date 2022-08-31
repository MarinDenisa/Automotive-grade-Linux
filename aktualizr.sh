#!/bin/bash

run_aktualizr() {
	currentDir=$(pwd)
	device=$(ls ../ota-lith/ota-ce-gen/devices | head -1)
	cd ../ota-lith/ota-ce-gen/devices/$device
	aktualizr -c config.toml > $currentDir/akt.output &
	
}

run_aktualizr
