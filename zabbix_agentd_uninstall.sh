#!/bin/bash
if [ -f /sbin/zabbix_agentd ]; then
	rm /sbin/zabbix_agentd
	echo 'delete /sbin/zabbix_agentd'
else
	echo 'can not delete /sbin/zabbix_agentd, file does not exists'
fi
if [ -d /etc/zabbix ]; then
	rm -R /etc/zabbix/
	echo 'delete /etc/zabbix/'
else
	echo 'can not delete /etc/zabbix, directory does not exists'
fi