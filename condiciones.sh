#!/bin/bash

echo "COMPROBADOR DE EXISTENCIA DE ARCHIVOS v1.0"
echo "------------------------------------------"
echo ""
echo "Introduce el nombre del archivo a comprobar: "

read ARCHIVO

if [ -d $ARCHIVO ]; then
	cowsay "El archivo existe"
else
	echo "Sorry bro, no esite"
fi
