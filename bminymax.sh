#!/bin/bash
maximo=0
minimo=1000
totalLineas=`cat consumos.txt | tail -n+1 | wc -l`

for i in `seq 2 $totalLineas`
do
    totalConsumos=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $4}'`
    if [ $totalConsumos -lt $minimo ]
    then
        minimo=$totalConsumos
        minimoMes=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $2}'`
        minimoAnyo=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $3}'`
        minimoCiudad=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $1}'`
    fi
    if [ $totalConsumos -gt $maximo ]
    then
        maximo=$totalConsumos
        minimoMes=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $2}'`
        maximoAnyo=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $3}'`
        maximoCiudad=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $1}'`
    fi
done

echo "El consumo maximo ha sido en $maximoCiudad en el mes $minimoMes y año $maximoAnyo."
echo "El consumo minimo ha sido en $minimoCiudad en el mes $minimoMes y año $minimoAnyo."