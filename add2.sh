#!/bin/bash

read $1 $2 $3 $4

let a = $1
let b = $2
let c = $3
let d = $4

if [ -z $5 ]; then
        let sum1=`expr $a + $b`
	let sum2=`expr $c + $d`
	expr $sum1 + $sum2
fi

if [ -z $4 ]; then
	let sum1=a+b
	expr $sum1 + $c
fi

if [ -z $3 ]; then
        expr $a + $b
fi

if [ -z $2 ]; then
        expr $a
fi

if [ -z $1 ]; then
	expr 0
fi
