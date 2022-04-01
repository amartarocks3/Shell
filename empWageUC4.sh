#!/bin/bash -x
wageperhour=20
fulldayhour=8
fulldaywage=0
parttimehour=9
parttimewage=0
monthlywage=0

for(( i=0;i<20;i++))
do
	a=$(($RANDOM % 2 ))
	b=$(($RANDOM % $parttimehour))
	if [[ a -eq 1 ]]
	then
        	parttimewage=$(($b*$wageperhour))
        	fulldaywage=$(($wageperhour*$fulldayhour))
        	fulldaywage=$(($fulldaywage+$parttimewage))
        	monthlywage=$(($monthlywage+$fulldaywage))
		echo $fulldaywage
        	echo "present"
	else
        	echo "absent"
	fi
done
echo "monthly wage = "
echo $monthlywage
