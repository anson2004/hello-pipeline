#!/bin/bash
echo "Starting application-start script"
whoami
echo $PATH
source ~/.bash_profile
echo $PATH
cd /var/api
ret=$(pm2 pid hello-pipeline )
echo $ret
if [ -z $ret ] ; then
    echo "instance not exist"
    pm2 start index.js --name hello-pipeline
else
    echo "instance exit"
    pm2 restart hello-pipeline
fi
