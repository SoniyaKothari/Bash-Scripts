#!/bin/bash

#EXTRACT FAILED LINES FROM JENKINS LOG

sudo journalctl -u jenkins.service | grep -i "failed" > failed_log.txt
