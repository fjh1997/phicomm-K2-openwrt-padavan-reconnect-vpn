#!/bin/sh
echo 'starting....'
echo "kill"
id=`ps -w | grep "ssh -Nfg" | grep -v grep | awk '{print $1;}' `
echo $id
kill $id
echo 'finish....'
