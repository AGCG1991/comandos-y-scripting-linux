#!/bin/bash
echo "Introduce tu edad: "
read EDAD

if 
	test $EDAD -ge 18;
then
	echo "Acceso permitido"
else
	echo "Acceso denegado"
fi
