#!/bin/bash

#MONITOR HEALTH

ALERT="alert_read.txt"

journalctl -p err..alert -b -2  | egrep "cpu|memory|oom|disk|fail|critical" > $ALERT

if [ -s $ALERT ];
then 
	echo "System health issues found, Check $ALERT"
else
	echo "System looks healthy"
fi
