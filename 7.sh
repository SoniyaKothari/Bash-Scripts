#RESTART A SERVICE IF IT IS DOWN

#!/bin/bash

SERVICE="nginx"

if ! systemctl is-active --quiet $SERVICE; 
then
	echo "Restarting $SERVICE"
	systemctl restart $SERVICE
	echo "$SERVICE running"
else
	echo "$SERVICE is running fine"
fi	
