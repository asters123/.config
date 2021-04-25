#!/bin/bash
if [ $USER != 'root' ];then
	echo '权限不够！请用root或者sudo执行！'
	exit
fi
WANGKA='enp2s0'
IP='10.0.0.124'
WANGGUANG='10.0.0.1'
DNS1='8.8.8.8'
DNS2='114.114.114.114'
WANGLUOCHANGDU='24'


touch /etc/systemd/network/static_${WANGKA}.network
echo '[Match]
Name='${WANGKA}'

[Network]
Address='${IP}'/'${WANGLUOCHANGDU}'
Gateway='${WANGGUANG}'
DNS='${WANGGUANG}'
' > /etc/systemd/network/static_${WANGKA}.network
systemctl reenable systemd-networkd
echo '设置完毕！重启生效！是否重启？[y/n]';read enter
if [ ${enter} == 'y' ];then
	reboot
else
	exit
fi
