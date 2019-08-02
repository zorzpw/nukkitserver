#!/bin/bash


WEB="https://github.com/zorzpw/nukkitserver/raw/master/"
BAO="nukkit.zip"
NUKKIT="server.jar"
PLUGINS="plugins.zip"
BF="buckup.sh"
JK="jk.sh"
#配置变量

clear
echo -e "================================================================="
echo -e "                                                 "     
echo -e "       一键在CentOS 7  系统搭建NUKKIT服务器   " 
echo -e "                                    "                             
echo -e "          Nukkit的Github:https://github.com/NukkitX/Nukkit      "
echo -e "          本脚本的Github:https://github.com/zorzpw/nukkitserver                                                        "
echo -e "              								                      "
echo -e "================================================================="
sleep 7
clear



echo "开始整理安装环境..."

yum -y wget unzip csreen yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel
#安装所需软件




cd /root
#转到root目录

wget ${WEB}${BAO}
#下载nukkit包

echo "开始安装NUKKIT"

unzip -q ${BAO}
#解压nukkit包


echo "下载最新服务端"
wget ${WEB}${NUKKIT}
#下载服务端

echo "下载崩服自启文件"
wget ${WEB}${JK}
#下载防崩监控文件

echo "下载备份文件"
wget ${WEB}${BF}
#下载备份文件
chmod 777 ${BF}
#添加执行权限

chmod 777 ${JK}
#添加执行权限


echo "下载插件"
wget ${WEB}${PLUGINS}
#下载插件
unzip ${PLUGINS}
#解压插件

sudo firewall-cmd --zone=public --add-port=19132/udp --permanent
#开放19132端口


echo "
---------------------------------------------------------
安装完成
					
开启服务器方法:

执行命令
screen -S mc
sh jk.sh

下次进入控制台直接输入screen -r mc

端口默认:19132


执行备份命令
sh backup.sh
备份文件在根/bak文件
                                        hibin WeCee
                                        https://hibin.club
---------------------------------------------------------
"
exit 0

