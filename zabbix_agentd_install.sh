#!/bin/bash
groupadd zabbix
useradd -g zabbix zabbix
cp zabbix_agentd /opt/
if [ -d /etc/zabbix ]; then
	echo 'directory /etc/zabbix already exists'
else
	mkdir /etc/zabbix/
	echo 'directory /etc/zabbix was created'
fi
./zabbix_agentd_conf.sh
cp zabbix_agentd.conf /etc/zabbix
echo 'zabbix_agentd.conf remove to /etc/zabbix/ directory'
echo 'file installation was successful'