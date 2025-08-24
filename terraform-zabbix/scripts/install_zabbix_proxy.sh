#!/bin/bash
set -e
apt update -y
apt install -y wget gnupg

wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-2+ubuntu24.04_all.deb
dpkg -i zabbix-release_7.0-2+ubuntu24.04_all.deb
apt update -y

apt install -y zabbix-proxy-mysql zabbix-agent
systemctl enable zabbix-proxy
systemctl start zabbix-proxy
