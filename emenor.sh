#!/bin/bash

menorMedia=`cat consumos.txt | awk '{print $4}' | head -2 | tail -1`
ciudadMediaMenor=`cat consumos.txt | awk '{print $1}' | head -2 | tail -1`
consumoTotal=`cat consumos.txt | tail -n+2 | wc -l`

for i in `seq 1 $consumoTotal`; do
i=$((i+1))
./cmedia.sh >> registroMedia.txt
if [ $media -lt $menorMedia ]
then
menorMedia=$media
ciudadMediaMenor=$ciudad
fi
done
echo "La media de consumo menor es: $ciudadMediaMenor "