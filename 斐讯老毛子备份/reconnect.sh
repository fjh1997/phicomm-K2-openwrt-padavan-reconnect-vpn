#!/bin/sh
echo "开始检测"
ping -c 4 -W 10 114.114.114.114
	if [ "$?" != "0" ];then
		ps w | grep l2tpd | grep -v grep | awk '{print $1}' | xargs kill -9
		restart_wan
		echo "已重连 " 
		echo "ok">>/tmp/vpncon.log
		if [ ! -f "/tmp/1.log" ] #五次重连不上则重启
		then
		touch "/tmp/1.log"
		a=0
		else
		a=`cat /tmp/1.log`
		fi
		if [ $a -le 5 ]
		then
		echo $(($a+1))> /tmp/1.log
		else
		reboot
		fi
	fi  
exit 0
