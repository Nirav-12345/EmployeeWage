#!/bin/bash -x

isPartTime=1
isFullTime=2
empRateHrs=20
randomCheck=$((RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then 

	emphr=8

elif [ $isPartTime -eq $randomCheck ]

then
	emphr=4

else
	emphr=0
fi
salary=$(($emphr*$empRateHrs))
