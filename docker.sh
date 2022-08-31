#!/bin/bash

run_docker() {
	echo "Starting Docker..."
	docker-compose -f ../ota-lith/ota-ce.yaml up --detach
	echo "Docker is Running."
}

stop_docker() {
	echo "Stopping Docker..."
	docker-compose -f ../ota-lith/ota-ce.yaml stop
	echo "Docker stopped."
}

Help() {
	#Display Help
	echo "Run or stop the docker"
	echo
	echo "SYNTAX: "
	echo "	docker [-r|s]"
	echo "OPTIONS:"
	echo "	-r	Run docker"
	echo "	-s	Stop docker"
	echo "	-h	Print this Help."
	echo
}

while getopts ":hrs" option; do
	case $option in
		h) # display Help
 			Help
         	exit;;
         	
        r) #run docker
	  		run_docker
		 	exit;;
		 	
      	s) #stop docker
			stop_docker
			exit;;
			
     	\?) # Invalid option
		     echo "Error: Invalid option"
		     exit;;
	esac
done

Help
