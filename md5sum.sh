#!/bin/bash

echo "Ejercicio Bucles y MD5"

for ARCHIVO in `ls *.mp4`; do
	VIDEO=`file $ARCHIVO | grep -i media`
	if [ "$VIDEO" != "" ]; then
		#md5sum $ARCHIVO
		
		NOMBRE=`echo $ARCHIVO | cut -d "." -f 1`
		ffmpeg -i $ARCHIVO $NOMBRE.mkv
	fi
done
