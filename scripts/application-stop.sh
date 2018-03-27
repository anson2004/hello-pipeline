#!/bin/bash
echo "Starting application-stop script"
whoami
echo $PATH
source ~/.bash_profile
echo $PATH
cd /var/api
pm2 delete "hello-pipeline"