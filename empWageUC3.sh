#!/bin/bash -x
#!/bin/bash -x
a=$(($RANDOM % 2 ))

wageperhour=20
fulldayhour=8
fulldaywage=0
parttimehour=9
parttimewage=0
b=$(($RANDOM % $parttimehour))
if [[ a -eq 1 ]]
then
	parttimewage=$(($b*$wageperhour))
        fulldaywage=$(($wageperhour*$fulldayhour))
        fulldaywage=$(($fulldaywage+$parttimewage))
	echo $fulldaywage
        echo "present"
else
        echo "absent"
fi

