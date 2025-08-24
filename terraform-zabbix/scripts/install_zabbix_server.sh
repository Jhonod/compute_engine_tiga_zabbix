#!/bin/bash
set -e

apt update -y
apt install -y wget gnupg lsb-release

wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-2+ubuntu24.04_all.deb
dpkg -i zabbix-release_7.0-2+ubuntu24.04_all.deb
apt update -y

apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent

systemctl enable zabbix-server
systemctl start zabbix-server
systemctl enable apache2
systemctl start apache2
