#!/bin/bash
echo "Starting application-stop script"
whoami
echo $PATH
export PATH=/home/ubuntu/.nvm/versions/node/v6.11.5/bin:$PATH
echo $PATH
cd /var/api
pm2 stop "hello-pipeline"