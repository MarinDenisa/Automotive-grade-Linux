#!/bin/bash

launch-update() {
	echo "${HOME}/.cargo/bin/ota update create -t ./$file"
	update_id=$(${HOME}/.cargo/bin/ota update create -t ./$file)
    update_id="${update_id%\"}"
    update_id="${update_id#\"}"
    device_id=$(ls ${HOME}/workspace/ota-lith/ota-ce-gen/devices | head -1)
    echo "device ID - $device_id"
    echo "update ID - $update_id"
    echo "${HOME}/.cargo/bin/ota update launch --update $update_id --device $device_id"
    ${HOME}/.cargo/bin/ota update launch --update $update_id --device $device_id
}

if [ $# -eq 0 ]
then
    echo "Error: give a file as parameter"
else  
	touch output
	echo "$HOME/.cargo/bin/ota package add -n $1 -v 2 -p ./$1 -b -h ota-ce-device > output"
	$HOME/.cargo/bin/ota package add -n $1 -v 2 -p ./$1 -b -h ota-ce-device > output

	file="$1.toml"
	jsonPath=".signed.targets.\"$1-2\""
	touch $file

	echo "# specify each hardware identifier in square brackets" > $file
	echo "[ota-ce-device]" >> $file

	echo "target_format = $(jq "$jsonPath.custom.targetFormat" output)" >> $file
	echo -e "generate_dif = true\n" >> $file

	echo "# required metadata specifying update target" >> $file
	echo "[ota-ce-device.to]" >> $file
	echo "name = \"$1\"" >> $file
	echo "version = $(jq "$jsonPath.custom.version" output)" >> $file
	echo "length = $(jq "$jsonPath.length" output)" >> $file
	
	hashMethod=$(jq "$jsonPath.hashes" output | jq 'keys'[0])
	echo "hash = $(jq "$jsonPath.hashes.$hashMethod" output)" >> $file
	echo "method = ${hashMethod}" >> $file
	
	launch-update	
fi

