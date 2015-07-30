#!/bin/bash
if [ -f /opt/zabbix_agentd ] && [ -f /etc/zabbix/zabbix_agentd.conf ]; then
	chmod +x /opt/zabbix_agentd
	/opt/zabbix_agentd --config /etc/zabbix/zabbix_agentd.conf
	echo 'zabbix was successfully started'
else
	echo 'files does not exists, try to install'
fi