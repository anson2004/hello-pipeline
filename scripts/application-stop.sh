#!/bin/bash
echo "Starting application-stop script"
whoami
echo $PATH
source ~/.bash_profile
echo $PATH
cd /var/api
ret=$(pm2 pid hello-pipeline )
echo $ret
if [ -z $ret ] ; then
    echo "instance not exist"
else
    echo "instance exit"
    pm2 stop hello-pipeline
fi