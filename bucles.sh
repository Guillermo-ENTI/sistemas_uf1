#!/bin/bash

echo "Ejercicio de bucles"

for VARIABLE in alejandropresidente `ls | head -n 3` patatafrita; do
	if [ -e $VARIABLE ]; then
		echo "Asies, el archivo $VARIABLE."
	else
		echo "Sorry bro, el archibo $VARIABLE no esite."
	fi
done
