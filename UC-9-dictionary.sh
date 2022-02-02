#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHoursInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0

function getWorkHrs()
{
	case $1 in

			$isFullTime )
	
					emphrs=8

				;;


			$isPartTime )
						emphrs=4


				;;


				*)

						emphrs=0


				;;


		esac


}


function getEmpWage()
{

		echo $(($1*$empRatePerHr))

}


	while [[ $totalEmpHr -lt $maxHoursInMonth &&


			$totalWorkingDays -lt $numOfWorkingDays ]]


do

		((totalWorkingDays++))

		randomCheck=$((RANDOM%3))

			getWorkHrs $randomCheck

			totalEmpHr=$(($totalEmpHr+$emphrs))

			dailyWages["$totalWorkingDays"]=$(($emphrs*$empRatePerHr))


done



totalSalary="$( getEmpWage $totalEmpHr )"


echo ${dailyWages[@]} #using array

echo ${!dailyWages[@]} #using dict



