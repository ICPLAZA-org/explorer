#!/bin/sh
# vim:sw=4:ts=4:et
<<INFO
AUTHOR:运维@小兵
DATE:2021-10-21
DESCRIBE:清理容器日志
SYSTEM:CentOS 7.6.1810
WARNING:警告信息
MODIFY:
INFO

set -e

DOCKER_STORAGE_PATH="/var/lib/docker"

echo "INFO:======== start clean docker containers logs ========"

logs_file=$(find ${DOCKER_STORAGE_PATH}/containers/ -name *-json.log)  #容器日志文件

for log_name in ${logs_file}
do
    echo "INFO:clean logs : ${log_name}"
    > ${log_name}
done

echo "INFO:======== end clean docker containers logs ========"

