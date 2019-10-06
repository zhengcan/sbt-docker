#!/bin/bash

./update.sh

docker build -f ./1.3/Dockerfile.8 -t zhengcan/sbt:8-1.3 -t zhengcan/sbt:latest .
docker build -f ./1.3/Dockerfile.11 -t zhengcan/sbt:11-1.3 .

docker build -f ./1.2/Dockerfile.8 -t zhengcan/sbt:8-1.2 .
docker build -f ./1.2/Dockerfile.11 -t zhengcan/sbt:11-1.2 .

