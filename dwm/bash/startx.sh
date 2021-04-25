#!/bin/bash
xorg=`ps -e | grep -o Xorg`
# echo "${xorg}"
if [ ${xorg} = "Xorg" ];then
	exit 0
else
	startx 
fi
