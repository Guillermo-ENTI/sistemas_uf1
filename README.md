# Sistemas informáticos - Documentación
Profesor: Rafa Laguna

## Introducción:

## Comandos:
En Linux, es necesario conocer los diferentes comandos para poder moverte por el sistema de forma rápida (a menudo mucho más rápida que con un entorno visual) y también poder hablar con él.

- pwd - "print working directory", te devuelve el directorio en el que te encuentras actualmente.
	- Ejemplo: 
	```bash
	enti@guille:~$ pwd
	/home/enti
```
En este caso, me encontraría en el directorio /home/enti

- cd - "change directory", cambia al directorio especificado. 
	- Ejemplo:
	```bash
	enti@guille:~$ pwd
	/home
	enti@guille:~$ cd enti
	enti@guille:~$ pwd
	/home/enti
	```
	En este caso, me encontraba en el directorio /home y grácias al ejemplo anterior sabemos que dentro de este directorio se encuentra el directorio "enti", por tanto, hemos cambiado a ese directorio.

	En este comando hay un par de atajos a tener en cuenta.
	El primero es el "..", que significa "el directorio padre", de esta forma, escribir cd .. te llevaría al directorio que contiene el directorio en el que te encuentras actualmente.

	El otro atajo es "-", que en este caso significa "directorio anterior"
