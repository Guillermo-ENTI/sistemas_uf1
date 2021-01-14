# Sistemas informáticos - Documentación
Profesor: Rafa Laguna

## Introducción:

## Comandos:
En Linux, es necesario conocer los diferentes comandos para poder moverte por el sistema de forma rápida (a menudo mucho más rápida que con un entorno visual) y también poder hablar con él.

Un comando hace una sola cosa, pero la hace bien. Esa acción puede ser una interacción con el sistema, como por ejemplo, cambiar de directorio actual, o también puede enviar cierta información por la salida estándar, si no se especifica una entrada estándar que reciba esa información, normalmente saldrá por la consola de comandos o la pantalla (el primer caso, que se recoja esa información, se explicará más adelante).

Además, un comando puede tener distintos parámetros, que irán siempre precedidos por un "-". Los parámetros modifican o especifican la función del comando, no todos los comandos tienen parámetros, y los que tienen, no son iguales los unos de los otros.

- pwd - "print working directory", saca por la salida estándar el directorio en el que te encuentras actualmente.
	- Ejemplo: 
	```
	enti@guille:~$ pwd
	/home/enti
	```
En este caso, me encontraría en el directorio /home/enti

> Antes de continuar con el siguiente comando, es necesario entender dos conceptos: referirse a un directorio de manera **absoluta** y de forma **relativa**.
>	- Absoluta: Referirse a un directorio de manera absoluta significa especificar toda la ruta hasta el directorio en cuestión empezando desde el /root. Ejemplo: cd /home/sistemas_uf1
>	- Relativa: Referirse a un directorio de manera relativa significa especificar la ruta hasta el directorio únicamente desde el directorio en el que te encuentras actualmente. Ejemplo: (Estando en el directorio /home/enti) cd sistemas_uf1


- cd - "change directory", cambia al directorio especificado. 
	- Ejemplo:
	```
	enti@guille:~$ pwd
	/home
	enti@guille:~$ cd enti
	enti@guille:~$ pwd
	/home/enti
	```
	En este caso, me encontraba en el directorio /home y grácias al ejemplo anterior sabemos que dentro de este directorio se encuentra el directorio "enti", por tanto, hemos cambiado a ese directorio (de forma relativa).

>	En este comando hay un par de atajos a tener en cuenta.
>	- El primero es el "..", que significa "el directorio padre", de esta forma, escribir cd .. te llevaría al directorio que contiene el directorio en el que te encuentras actualmente.
>	- El otro atajo es "-", que en este caso significa "directorio anterior"

- ls - "list", saca por la salida estándar una lista con todos los archivos que se encuentren en el directorio actual.

	Este comand tiene una serie de parámetros muy útiles que merece la pena nombrar:
	- -l : muestra la lista en vertical con más información, como por ejemplo su tamaño o fecha de modificación.
	- -a : muestra además, los archivos ocultos que se encuentren en este directorio.
> Todo aquel archivo que tenga un "." al inicio de su nombre aparecerá oculto a menos que se use el párametro anteriormente nombrado.
	- -s : muestra los bloques de memoria que ocupa cada archivo (este parámetro no tiene demasiada utilidad, se utiliza para la regla mnemotécnica).
	- -t : muestra la lista de archivos en orden de modificación del más reciente al menos reciente.
	- -r : muestra la lista de archivos del revés.

	De esta forma, usando el parámetro -last / -lastr, obtendremos una lista de archivos con más información y de manera ordenada.
