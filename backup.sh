#！/bin/sh
mkdir /home/beifen
#创建一个临时文件（要保存备份的路径）
cp -r /root/worlds/*  /home/beifen
#数据存在backups目录下，备份到beifen目录下，所以先将数据拷过来
tar -zcPvf /home/HiBIN.backup$(date +%Y%m%d.%T).tar.gz /home/beifen
 #将数据所在文件夹beifen打包
rm -rf /home/beifen/
 #删除临时文件内容
 
find ./ -mtime +30 -name "*.tar.gz" -exec rm -rf {} \;
#删除改文件夹下超过30天的文件

#HIBIN备份程序