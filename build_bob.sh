#!/bin/sh

. ./config

echo "Building docker image ${DOCKER_IMAGE}..."

docker build -t ${DOCKER_IMAGE} \
--build-arg user=${DOCKER_USER} \
--build-arg group=${DOCKER_GROUP} \
--build-arg user_uid=${DOCKER_USER_UID} \
--build-arg user_gid=${DOCKER_USER_GID} \
-f ${DOCKER_FILE} .
