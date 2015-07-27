#!/bin/bash
ps -ef | grep 'zabbix_agentd' | awk '{print $2}' | xargs kill