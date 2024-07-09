#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for node.js with a built-in load balancer
sudo npm install -g pm2
#stop any instances of our application running currently
pm2 stop SimpleApplication
#change directory into folder where application is downloaded
cd DevOpsCA
# Install application dependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application with the process name example_app using pm2
pm2 start ./bin/www --name SimpleApplication