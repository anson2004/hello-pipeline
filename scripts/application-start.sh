#!/bin/bash
echo "Starting application-start script"
whoami
echo $PATH
source ~/.bash_profile
echo $PATH
cd /var/api
pm2 start index.js --name "hello-pipeline"