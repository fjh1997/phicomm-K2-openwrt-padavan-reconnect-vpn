# phicomm-K2-openwrt-reconnect-vpn
斐讯K2自动锐捷闪讯拨号，断线重连脚本以及固件，通过mentohust实现锐捷闪讯认证，通过l2tp实现拨号
计划任务里写如

*/1 * * * * sh /reconnect.sh

可实现每分钟自动检测断网重连
##########部分配置文件去百度网盘下载

恢复overlay：


rm -rvf /overlay/*


cd /


tar -xzvf /tmp/overlay_backup.tar.gz

## 老毛子保存到闪存
mtd_storage.sh save
