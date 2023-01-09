#!/bin/bash

set -e

sudo docker build -t node:custom /home/ec2-user/server-test/app
sudo docker run -d -it -u root -p 8080:8080 --name app_container node:custom /bin/bash