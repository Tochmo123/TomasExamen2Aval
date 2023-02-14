#!/bin/bash

ciudad=$1
mediaTotal=`./cmedia.sh $ciudad`

if [ $mediaTotal -ge 400 ]
then 
    echo "$ciudad es: NO ECO"
else
    echo "$ciudad es: ECO"
fi