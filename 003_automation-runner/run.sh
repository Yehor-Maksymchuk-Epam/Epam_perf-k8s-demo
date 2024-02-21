#!/bin/sh
REPO_DIR=$(hostname)
echo "Running on $REPO_DIR"
apk add git
git clone  /home/gradle/framework
cd /home/gradle/framework/performance-tests
# git checkout 
mvn clean 
mvn mvn gatling:test
