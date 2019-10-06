#!/bin/bash

# 1.2
sed -e 's/FROM .*/FROM openjdk:8/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.2/Dockerfile > 1.2/Dockerfile.8
sed -e 's/FROM .*/FROM openjdk:11/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.2/Dockerfile > 1.2/Dockerfile.11

# 1.3
sed -e 's/FROM .*/FROM openjdk:8/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.3/Dockerfile > 1.3/Dockerfile.8
sed -e 's/FROM .*/FROM openjdk:11/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.3/Dockerfile > 1.3/Dockerfile.11



