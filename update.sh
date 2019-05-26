#!/bin/bash

# 1.2.8
sed -e 's/FROM .*/FROM openjdk:8-stretch/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.2.8/Dockerfile > 1.2.8/Dockerfile.8
sed -e 's/FROM .*/FROM openjdk:11-stretch/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.2.8/Dockerfile > 1.2.8/Dockerfile.11

# 1.3.0
sed -e 's/FROM .*/FROM openjdk:8-stretch/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.3.0/Dockerfile > 1.3.0/Dockerfile.8
sed -e 's/FROM .*/FROM openjdk:11-stretch/g' -e 's/# Dockerfile Template #/# Auto Generated #/g' 1.3.0/Dockerfile > 1.3.0/Dockerfile.11



