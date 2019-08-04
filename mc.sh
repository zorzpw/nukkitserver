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

yum -y install unzip csreen java-1.8.0-openjdk java-1.8.0-openjdk-devel
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

echo "下载备份脚本"
wget ${WEB}${BF}
#下载备份文件
chmod 777 ${BF}
#添加执行权限

chmod 777 ${JK}
#添加执行权限


cd /root/plugins
#转到plugins目录

echo "下载插件"
wget ${WEB}${PLUGINS}
#下载插件

unzip ${PLUGINS}
#解压插件


echo "设置防火墙开放19132端口"
sudo firewall-cmd --zone=public --add-port=19132/udp --permanent
#开放19132端口


rm -rf /root/${PLUGINS}
rm -rf /root/${BAO}
#删除压缩文件

echo "
---------------------------------------------------------
安装完成
					
开启服务器命令:
screen -S mc      （创建一个名字为mc的运行窗口）
sh jk.sh                 (开启服务器脚本，本脚本崩服自启)

下次进入控制台直接输入 screen -r mc

备份地图执行命令 /backup.sh   (备份文件在/home目录)
建议添加到定时任务

端口默认:19132


                                        hibin WeCee
                                        https://hibin.club
---------------------------------------------------------
"
exit 0

