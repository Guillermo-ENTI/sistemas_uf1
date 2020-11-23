#!/bin/bash

echo "Ejercicio Bucles y MD5"

for ARCHIVO in `ls *.mp4`; do
	md5sum $ARCHIVO | cut -d " " -f 1
done
