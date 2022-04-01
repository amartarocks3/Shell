#!/bin/bash -x
wageperhour=20
fulldayhour=8
fulldaywage=0
parttimehour=9
parttimewage=0
monthlywage=0
totalhour=0
totalday=0
maxhour=100
maxday=20
while [[ $totalhour -lt $maxhour && $totalday -lt $maxday ]]
do
        a=$(($RANDOM % 2 ))
        b=$(($RANDOM % $parttimehour))
        if [[ a -eq 1 ]]
        then	
		totalhour=$(($totalhour+$b))
                totalday=$(($totalday+1))
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


