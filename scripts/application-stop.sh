#!/bin/bash
echo "Starting application-stop script"
whoami
echo $PATH
source ~/.bash_profile
echo $PATH
cd /var/api
pm2 stop "hello-pipeline"
if [ ! $? -eq 0 ]; then
    echo "pm2 stop failing""
fi