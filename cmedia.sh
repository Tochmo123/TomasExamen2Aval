#!/bin/bash

ciudad=$1
sumaTotal=0
media=0
contador=0
totalLineas=`cat consumos.txt | tail -n+1 | wc -l`

for i in `seq 2 $totalLineas`
do
ciudadConsumos=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $1}'`
consumoConsumos=`cat consumos.txt | tail -n+$i | head -n1 | awk '{print $4}'`
if [ $ciudad == $ciudadConsumos ] ;then
sumaTotal=$(($sumaTotal + $consumoConsumos))
contador=$(($contador + 1))
fi
done

media=$(($sumaTotal / $contador))
echo $media