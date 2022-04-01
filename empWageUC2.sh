#!/bin/bash -x
a=0
a=$(($RANDOM % 2 ))
wageperhour=20
fulldayhour=8
fulldaywage=0
if [[ a -eq 1 ]]
then
	fulldaywage=$(($wageperhour*$fulldayhour))
	echo $fulldaywage        
	echo "present"
else
        echo "absent"
fi


