#!/bin/bash -x
echo "Enter 1 if someone is present and 0 for absent "
read a
if(( a eq 1))
then 
	echo "present"
else
	echo "absent"
fi
 
