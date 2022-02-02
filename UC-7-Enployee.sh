#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

function getworkinghours() 

{


case $1 in 

		$isFullTime)

				emphrs=8

			;;



		$isPartTime)


				emphrs=4


			;;


			*)


				emphrs=0




	esac


}




while [[ $totalEmpHr -lt $maxRateInMonth &&


		$totalWorkingDays -lt $numOfWorkingDays ]]



do

	((totalWorkingDays++))

		getworkinghours $((RANDOM%3))

		totalEmpHr=$(($totalEmpHr+$emphrs))






done



		totalSalary=$(($totalEmpHr*$empRatePerHr))


