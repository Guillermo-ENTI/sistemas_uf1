#!/bin/bash

echo "Ejercicio Bucles y MD5"

for VARIABLE in `ls *.mp4`; do
	echo "-------------------"
	VIDEO=`file $VARIABLE | grep Media`
	if [ "$VIDEO" != "" ]; then
		md5sum $ARCHIVO
	fi
done
