#!/bin/bash
cp zabbix_agentd.conf.example zabbix_agentd.conf
sed -i 's/Zabbix_server/'$HOSTNAME'/' zabbix_agentd.conf
echo 'file zabbix_agentd.conf successfully created'
