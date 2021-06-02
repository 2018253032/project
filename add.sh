#!/bin/bash

sum=0
sum=$1

while [ $# -ge 2 ]
do
        sum=`expr $sum + $2`
        shift
done

echo $sum
