#!/bin/bash

launch-update() {
	#echo "${HOME}/.cargo/bin/ota update create -t ./$file"
	update_id=$(${HOME}/.cargo/bin/ota update create -t ./$file)
	update_id="${update_id%\"}"
	update_id="${update_id#\"}"
	device_id=$(ls ./ota-ce-gen/devices | head -1)
	#echo "device ID - $device_id"
	#echo "update ID - $update_id"
	#echo "${HOME}/.cargo/bin/ota update launch --update $update_id --device $device_id"
	${HOME}/.cargo/bin/ota update launch --update $update_id --device $device_id
}

Help() {
	#Display Help
	echo "Create a tome file for the file you want to send as an update"
	echo
	echo "SYNTAX: "
	echo "	createToml [-a|n|h|l|]"
	echo "OPTIONS:"
	echo "	-a <name>	Create a toml and launch update"
	echo "	-n <name>	Create a toml for a file"
	echo "	-h		Print this Help."
	echo "	-l <name>    		Launch device update (give .toml file as argument)"
	echo
}

generate-tome() {
	if [ -z ${fileName+x} ]
	then
		echo "Error: give a file as parameter"
	else  
		touch output
		#echo "$HOME/.cargo/bin/ota package add -n $fileName -v 2 -p ./$fileName -b -h ota-ce-device > output"
		$HOME/.cargo/bin/ota package add -n $fileName -v 2 -p ./$fileName -b -h ota-ce-device > output

		file="$fileName.toml"
		jsonPath=".signed.targets.\"$fileName-2\""
		touch $file

		echo "# specify each hardware identifier in square brackets" > $file
		echo "[ota-ce-device]" >> $file

		echo "target_format = $(jq "$jsonPath.custom.targetFormat" output)" >> $file
		echo -e "generate_dif = true\n" >> $file

		echo "# required metadata specifying update target" >> $file
		echo "[ota-ce-device.to]" >> $file
		echo "name = \"$fileName\"" >> $file
		echo "version = $(jq "$jsonPath.custom.version" output)" >> $file
		echo "length = $(jq "$jsonPath.length" output)" >> $file
		
		hashMethod=$(jq "$jsonPath.hashes" output | jq 'keys'[0])
		echo "hash = $(jq "$jsonPath.hashes.$hashMethod" output)" >> $file
		echo "method = ${hashMethod}" >> $file	
	fi
}

fileName=null
file=null

while getopts ":hl:n:a:" option; do
	case $option in
		h) # display Help
 			Help
         	exit;;
         	
        l) #launch update
	  		file=$OPTARG
	  		fileType=$(echo $file | cut -d "." -f 2)
	  		if [ $fileType == "toml" ]
	  		then
	  			launch-update
	  		else
	  			echo "Error: file must be .toml"
	  		fi
		 	exit;;
		 	
      	n) # Enter a name
			fileName=$OPTARG
			echo $fileName
			generate-tome;;
			
		:)
			echo "Error: give a file name as argument"
			echo
			Help
			exit;;
	  	
		a) #create toml and update
			fileName=$OPTARG
			echo $fileName
			generate-tome
			echo "update launch"
		 	launch-update
		 	exit;;
     	\?) # Invalid option
		     echo "Error: Invalid option"
		     exit;;
	esac
done
