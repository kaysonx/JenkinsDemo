#!/usr/bin/env bash

echo 'Deploy'


sudo cp -f build/libs/jenkins-demo-*.jar /var/app/

sudo docker rm -f $(sudo docker ps -a | grep jenkins-demo | awk '{print $1}') || echo 'No existing container...'

sudo docker run -u root --name jenkins-demo -d -p 9000:9000 -v /var/app/:/app jenkinsdemo