#!/bin/bash
echo "Starting application-start script"
whoami
echo $PATH
export PATH=/root/.nvm/versions/node/v6.11.5/bin:$PATH
echo $PATH
cd /var/api
npm start