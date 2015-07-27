#!/bin/bash
cp zabbix_agentd /sbin/
if [ -d /etc/zabbix ]; then
	echo 'directory zabbix already exists'
else
	mkdir /etc/zabbix/
	echo 'directory zabbix was created'
fi
./zabbix_agentd_conf.sh
cp zabbix_agentd.conf /etc/zabbix
echo 'file installation was successful'