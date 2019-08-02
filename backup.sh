#!/bin/bash

f_time=`date +%F_%H_%M_%S`

if [ ! -d /bak ]
then
        mkdir /bak
fi

tar czf /bak/$f_time-log.tar.gz /root/*

find /bak -mtime +7 -type f -name "*.tar.gz" -exec -rm -rf{} \;