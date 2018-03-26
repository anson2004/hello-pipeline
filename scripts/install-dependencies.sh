if which node > /dev/null
    then
        echo "node is installed, skipping..."
    else
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
        . ~/.nvm/nvm.sh
        nvm install 6.11.5
    fi