#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent  -eq $randomCheck ]

then 
	dailywage=20
	hr=8
	salary=$(($hr*$dailywage))
	

else
	salary=0
fi 
