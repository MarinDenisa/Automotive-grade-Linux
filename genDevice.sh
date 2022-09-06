#!/bin/bash

yes | sudo apt-get install jq
cd ${HOME}/Desktop/otagui/ota-lith/
./scripts/gen-device.sh 

$SHELL
