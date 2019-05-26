#!/bin/bash

./update.sh

docker build -f ./1.2.8/Dockerfile.8 -t zhengcan/sbt:8-1.2.8 .
docker build -f ./1.2.8/Dockerfile.11 -t zhengcan/sbt:11-1.2.8 -t zhengcan/sbt:latest .
docker build -f ./1.3.0/Dockerfile.8 -t zhengcan/sbt:8-1.3.0 .
docker build -f ./1.3.0/Dockerfile.11 -t zhengcan/sbt:11-1.3.0 .

