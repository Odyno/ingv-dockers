#!/bin/bash

#TAG=$(git describe --exact-match --tags HEAD)
IMAGE_NAME=odyno/ingv-base
IMAGE_VER=latest

git describe --exact-match --tags HEAD 2 &>/dev/null

docker info >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "FATAL : Unable to talk to the docker daemon"
    exit 3
fi

docker build -t ${IMAGE_NAME}:${IMAGE_VER} .
