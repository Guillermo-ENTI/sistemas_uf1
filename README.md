# Sistemas informáticos - Documentación
Profesor: Rafa Laguna

## Índice:
###	[Introducción](https://github.com/guillermoenti/sistemas_uf1#introducción)

###	[Comandos](https://github.com/guillermoenti/sistemas_uf1#comandos)

###	[Redirectores](https://github.com/guillermoenti/sistemas_uf1#redirectores)

###	[Git](https://github.com/guillermoenti/sistemas_uf1#git)

###	[Vim](https://github.com/guillermoenti/sistemas_uf1#vim)

###	[Bash](https://github.com/guillermoenti/sistemas_uf1#bash)

###	[Instalación de un sistema operativo](https://github.com/guillermoenti/sistemas_uf1#instalación-de-un-sistema-operativo)

## Introducción:

## Comandos:
En Linux, es necesario conocer los diferentes comandos para poder moverte por el sistema de forma rápida (a menudo mucho más rápida que con un entorno visual) y también poder hablar con él.

Un comando hace una sola cosa, pero la hace bien. Esa acción puede ser una interacción con el sistema, como por ejemplo, cambiar de directorio actual, o también puede enviar cierta información por la salida estándar, si no se especifica una entrada estándar que reciba esa información, normalmente saldrá por la consola de comandos o la pantalla (el primer caso, que se recoja esa información, se explicará más adelante).

Además, un comando puede tener distintos parámetros, que irán siempre precedidos por un "-". Los parámetros modifican o especifican la función del comando, no todos los comandos tienen parámetros, y los que tienen, no son iguales los unos de los otros.

- pwd - "**p**rint **w**orking **d**irectory", saca por la salida estándar el directorio en el que te encuentras actualmente.
	- Ejemplo: 
	```
	enti@guille:~$ pwd
	/home/enti
	```
En este caso, me encontraría en el directorio /home/enti

> Antes de continuar con el siguiente comando, es necesario entender dos conceptos: referirse a un directorio de manera **absoluta** y de forma **relativa**.
>	- Absoluta: Referirse a un directorio de manera absoluta significa especificar toda la ruta hasta el directorio en cuestión empezando desde el /root. Ejemplo: cd /home/sistemas_uf1
>	- Relativa: Referirse a un directorio de manera relativa significa especificar la ruta hasta el directorio únicamente desde el directorio en el que te encuentras actualmente. Ejemplo: (Estando en el directorio /home/enti) cd sistemas_uf1


- cd - "**c**hange **d**irectory", cambia al directorio especificado. 
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

- ls - "**l**i**s**t", saca por la salida estándar una lista con todos los archivos que se encuentren en el directorio actual.

	Este comand tiene una serie de parámetros muy útiles que merece la pena nombrar:
	- -l : muestra la lista en vertical con más información, como por ejemplo su tamaño o fecha de modificación.
	- -a : muestra además, los archivos ocultos que se encuentren en este directorio.

	>Archivos ocultos: Todo aquel archivo que tenga un "." al inicio de su nombre aparecerá oculto a menos que se use el párametro anteriormente nombrado.

	- -s : muestra los bloques de memoria que ocupa cada archivo (este parámetro no tiene demasiada utilidad, se utiliza para la regla mnemotécnica).
	- -t : muestra la lista de archivos en orden de modificación del más reciente al menos reciente.
	- -r : muestra la lista de archivos del revés.

	De esta forma, usando el parámetro -last / -lastr, obtendremos una lista de archivos con más información y de manera ordenada.

- history - "historial / histórico", saca por la salida estándar una enumeración completa de todos los comandos que se han utilizado en la sesión en la que ejecutas el comando.
	- !n : ejecuta el comando de la línea "n" especificada.
	- !! : ejecuta el comando anterior.
	> Ninguno de los anteriores comandos se deben usar junto al comando history, funcionan por sí mismos, simplemente el comando history es útil para utilizarlos.

- man - "**man**ual", saca por la salida estándar un manual de uso del comando que especifiques. Ejemplo: man ls

- whatis - "¿qué es...?", saca por la salida estándar la función del comando especificado concentrado en una sola línea. Ejemplo: whatis pwd

- whereis - "¿dónde está...?, saca por la salida estándar la ruta de ciertos archivos.

- whoami - "¿quién soy yo?, saca por la salida estándar el usuario en el que estás trabajando.

- mkdir - "**m**a**k**e **dir**ectory", crea un directorio con el nombre que elijas en el directorio en el que te encuentras. Ejemplo: mkdir sistemas_uf2

- rmdir - "**r**e**m**ove **dir**ectory", elimina un directorio especificado únicamente si está vacío.

- touch - crea un archivo vacío, aunque también puede hacer muchas otras cosas grácias a diferentes parámetros, como por ejemplo, cambiar la fecha de modificación de un archivo.

- rm - "**r**e**m**ove", elimina archivos o directorios.
	- -r : si el directorio que deseas eliminar tiene archivos dentro, añadir este parámetro elimina el directorio recursivamente.
	> Recursividad: Proceso basado en su propia definición. Es decir, eliminar un directorio lleno recursivamente, significaría que primero llega a un directorio que no contenga más directorios, y a partir de ahí irá borrando hacia atrás.

- mv - "**m**o**v**e", mueve o renombra un archivo.
	- Mover archivo: para mover un archivo, primero se debe especificar el archivo a mover, y acto seguido el directorio al que deseas moverlo, ya sea de forma relativa o absoluta. Ejemplo: mv ratas_pizza /home/enti/sistemas_uf1. En este caso estaríamos moviendo el archivo llamado "ratas_pizza" al directorio sistemas_uf1.
	- Renombrar archivo: para renombrar un archivo, primero debemos especificar el archivo a renombrar y después el nuevo nombre del archivo. Es muy importante que el nuevo nombre no sea el de un archivo ya existente, porque en ese caso estaríamos destruyendo el antiguo para renombrar el actual.

- cat - "con**cat**enar", saca por la salida estándar, línea a línea, el contenido de un archivo.

- echo - "eco", saca por la salida estándar una string.

- chmod - "**ch**ange **mod**e", cambia los permisos de acceso de un fichero o directorio.
	- +x : otorga permisos de ejecución, necesaio para programas descargados desde internet o scripts caseros.

- apt-get - 

## Redirectores

## Git

## Vim

## Bash

## Instalación de un sistema operativo

