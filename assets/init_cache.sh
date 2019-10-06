#!/bin/bash

CACHE_DIR=/root/cache

# Check & Initial
if [[ -d ${CACHE_DIR} ]]; then
  # Coursier
  if [[ ! -d ${CACHE_DIR}/.cache ]]; then
    cp -r /root/.cache ${CACHE_DIR}/.cache;
  fi
  rm -rf /root/.cache
  ln -s ${CACHE_DIR}/.cache /root/.cache

  # Ivy2
  if [[ ! -d ${CACHE_DIR}/.ivy2 ]]; then
    cp -r /root/.ivy2/ ${CACHE_DIR}/.ivy2;
  fi
  rm -rf /root/.ivy2
  ln -s ${CACHE_DIR}/.ivy2 /root/.ivy2

  # Sbt
  if [[ ! -d ${CACHE_DIR}/.sbt ]]; then
    cp -r /root/.sbt/ ${CACHE_DIR}/.sbt;
  fi
  rm -rf /root/.sbt
  ln -s ${CACHE_DIR}/.sbt /root/.sbt
fi

