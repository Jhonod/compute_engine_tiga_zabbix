#!/bin/bash
set -e
apt update -y
apt install -y mariadb-server mariadb-client

systemctl enable mariadb
systemctl start mariadb

mysql -uroot <<EOF
CREATE DATABASE zabbix character set utf8mb4 collate utf8mb4_bin;
CREATE USER 'zabbix'@'%' IDENTIFIED BY 'zabbixpass';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'%';
FLUSH PRIVILEGES;
EOF
