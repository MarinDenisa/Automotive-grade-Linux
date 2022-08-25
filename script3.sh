#!/bin/bash

aktualizrconfig() {
	
	sudo apt-get install jq
	cd ${HOME}/Desktop/ota-lith/
	./scripts/gen-device.sh
	cd .. 

	yes | git clone --recursive https://github.com/advancedtelematic/aktualizr
	cd aktualizr/
	git submodule update --init --recursive
	mkdir build
       	cd build
 	cmake -DCMAKE_BUILD_TYPE=Debug ..
	make package
	sudo dpkg -i aktualizr.deb

	cd ${HOME}/Desktop/ota-lith/
	./scripts/get-credentials.sh  #in ota lith

	cd ..  
	yes | git clone https://github.com/simao/ota-cli.git

	cd ota-cli/
	sudo apt-get update
	sudo apt-get -y install cargo
	make ota
	${HOME}/.cargo/bin/ota init --campaigner http://campaigner.ota.ce --director http://director.ota.ce --registry http://deviceregistry.ota.ce --credentials ../ota-lith/ota-ce-gen/credentials.zip --reposerver http://reposerver.ota.ce

}

	aktualizrconfig

$SHELL
