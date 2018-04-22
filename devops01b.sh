#!/bin/bash

if [ -z $1 ]
then
        echo "Missing argument. Pass one of the arguments: -volumes or -cpu or -ram or -network or -all"

elif [ $1 == '-volumes' ]
then 
	echo "$(df -h)"

elif [ $1 == '-cpu' ]
then
        echo "$(cat /proc/cpuinfo)"

elif [ $1 == '-ram' ]
then
        echo "$(cat /proc/meminfo)"

elif [ $1 == '-network' ]
then
        echo "$(ipconfig -all | egrep "IPv4|Physi")"

elif [ $1 == '-all' ]
then
        echo "$(df -h)"
	echo
	echo "$(cat /proc/cpuinfo)"
	echo
	echo "$(cat /proc/meminfo)"
	echo
	echo "$(ipconfig -all | egrep "IPv4|Physi")"

fi
