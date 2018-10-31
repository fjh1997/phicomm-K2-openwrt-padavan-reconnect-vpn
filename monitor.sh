#!/bin/sh
icount=`ps -w|grep "ssh -Nfg"|grep -v grep|wc -l`
if [ $icount == 0 ];then
logger -t "ssh_remote" "ssh remote restart!"
ssh -Nfg -K 120 -R *:667:192.168.1.1:22 114.114.114.114 -p 26259 -l root
fi