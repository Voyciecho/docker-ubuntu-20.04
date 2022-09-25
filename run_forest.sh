#!/bin/sh

. ./config

echo "Running docker image ${DOCKER_IMAGE}..."

docker run \
    -e USER=${DOCKER_USER} \
    -v ${HOME}/sources:/sources \
    --network host \
    --hostname ${DOCKER_HOSTNAME} \
    -it --rm ${DOCKER_IMAGE}
