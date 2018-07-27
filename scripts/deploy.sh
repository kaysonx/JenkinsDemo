#!/usr/bin/env bash

#java -jar build/libs/jenkins-demo-*.jar

echo 'deploy start...'

cp build/libs/jenkins-demo-*.jar /var/app/

echo 'copy jar successful...'

docker rm -f $(docker ps -a | grep jenkins-demo | awk '{print $1}') || echo 'No existing container...'

echo 'ready for launch container...'

docker run -u root --name jenkins-demo -d -p 9000:9000 -v /var/app/:/app jenkins-demo/latest
