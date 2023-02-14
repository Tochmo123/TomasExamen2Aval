#!/bin/bash
read -p "Proporcioname una ciudad: " ciudadFinal
total=0
consumos=`cat consumos.txt | tail -n+1 | wc -l`

while [ $total -eq 0 ]; do
for i in `seq 2 $consumos`; do
ciudadrep=`cat consumos.txt | awk '{print $1}' | head -$i | tail -1`
consumorep=`cat consumos.txt | awk '{print $4}' | head -$i | tail -1`
if [ $ciudadrep = $ciudadFinal ]
then
total=$((total+consumorep))
fi
done
if [ $total -eq 0 ]
then
echo "Nombre ivalido."
read -p "Proporcioname otra ciudad: " ciudadFinal
fi
done
echo
echo "Consume final de $ciudadFinal es: $total"

