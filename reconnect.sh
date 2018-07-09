#!/bin/sh
echo "开始检测"
ping -c 4 www.baidu.com
	if [ "$?" != "0" ];then
		mentohust -b1   
		ifdown ZSTUVPN   
		ifup ZSTUVPN   
		echo "已重连 " 
		echo "ok">>/tmp/vpncon.log

	fi  
exit 0

