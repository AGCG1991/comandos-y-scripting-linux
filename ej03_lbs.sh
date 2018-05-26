#!/bin/bash

CONT=1
echo "Introduce el primer dígito"
read num1
echo "Introduce el segundo dígito"
read num2

while [ $CONT -eq 1 ]
do
	echo "1. [S]uma"
	echo "2. [R]esta"
	echo "3. [M]ultiplicación"
	echo "4. [D]ivisión"
	echo "5. [F]inalizar"
	read OPT

	case $OPT in
		S)
			res=`expr $num1 + $num2`
			echo "Resultado: $res"
			echo "Pulsa [ENTER] para continuar"
			read $ENT
			clear
			;;	
		R)
			res=`expr $num1 - $num2`
			echo "Resultado: $res"
			echo "Pulsa [ENTER] para continuar"
			read $ENT
			clear
			;;
		M)
			res=`expr $num1 \* $num2`
			echo "Resultado: $res"
			echo "Pulsa [ENTER] para continuar"
			read $ENT
			clear
			;;
		D)
			res=`expr $num1 \/ $num2`
			echo "Resultado: $res"
			echo "Pulsa [ENTER] para continuar"
			read $ENT
			clear
			;;
		F)
			$CONT=0
			break
			;;
		*)
			echo "qué?"
	esac
done
