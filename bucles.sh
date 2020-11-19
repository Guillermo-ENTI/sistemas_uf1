#!/bin/bash

echo "Ejercicio de bucle"

NUMERO_ITERACiONES=0

for VARIABLE in alejandropresidente `ls | head -n 7` patatafrita; do
	if [ -e $VARIABLE ]; then
		echo -e "\e[92m Asies, el archivo $VARIABLE existe.\e[0m"
	else
		echo -e "\e[91m Sorry bro, el archibo $VARIABLE no esite.\e[0m"
	fi
	NUMERO_ITERACIONES=$((NUMERO_ITERACIONES + 1))
done

echo ""

NUMERO_COLOR=101

for VARIABLE in rojo verde amarillo azul magenta cyan; do
	echo -e "\e[$NUMERO_COLOR;30m Rafa said LGBTQ+ Rigths \e[0m"
	NUMERO_COLOR=$((NUMERO_COLOR + 1))
done
