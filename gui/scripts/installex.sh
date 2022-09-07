#!/bin/bash

declare -a isarray=('docker' 'docker.io' 'docker-compose' 'default-jre' 'openjdk-11-jre-headless' 'openjdk-8-jre-headless' 'asn1c' 'build-essential' 'cmake' 'curl' 'libarchive-dev'  'libboost-dev' 'libboost-filesystem-dev'  'libboost-log-dev' 'libboost-program-options-dev' 'libcurl4-openssl-dev' 'libpthread-stubs0-dev' 'libsodium-dev' 'libsqlite3-dev' 'libssl-dev' 'python3' )


cnt=0
cnt2=0



apt list 2>/dev/null > temp.txt

for i in "${isarray[@]}" ; do
    if grep -in -q "^${i}/" temp.txt; then
        cnt2=$((cnt2+1))
    else
    	echo ${isarray[i]}
    	cnt=$((cnt+1))
    fi 
done 

rm -rf temp.txt

echo $cnt
