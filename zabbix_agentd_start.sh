#!/bin/bash
if [ -f /sbin/zabbix_agentd ] && [ -f /etc/zabbix/zabbix_agentd.conf ]; then
	/sbin/zabbix_agentd
	echo 'zabbix was successfully started'
else
	echo 'files does not exists, try to install'
fi