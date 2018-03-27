#!/bin/bash
echo "Starting install-dependencies script"
whoami
echo $PATH
source ~/.bash_profile
echo $PATH

if which node > /dev/null
    then
        echo "node is installed, skipping..."
    else
        echo "installing node 6.11.5..."
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
        . ~/.nvm/nvm.sh
        nvm install 6.11.5
    fi

if which pm2 > /dev/null
    then
        echo "pm2 is installed, skipping..."
    else
        echo "installing pm2..."
        npm install -g pm2
    fi