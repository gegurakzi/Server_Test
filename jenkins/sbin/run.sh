#!/bin/bash

set -e

sudo docker build -t jenkins/jenkins:custom /home/ec2-user/server-test/jenkins
sudo docker run -d -it -u root -v /home/ec2-user/server-test/jenkins/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 9090:8080 -p 50000:50000 --name jenkins_container jenkins/jenkins:custom /bin/bash