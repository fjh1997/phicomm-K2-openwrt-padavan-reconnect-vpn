#!/bin/sh
# 放在/etc/storage/scripts下
# crontab里加上 * * * * *  reconnect.sh
echo "开始检测"
ping -c 4 -W 10 1.1.1.1
	if [ "$?" != "0" ];then
		ps w | grep l2tpd | grep -v grep | awk '{print $1}' | xargs kill -9
		restart_wan
		echo "已重连"
		echo "ok">>/tmp/vpncon.log
	fi  
exit 0