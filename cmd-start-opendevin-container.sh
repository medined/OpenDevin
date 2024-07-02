#!/bin/bash

export WORKSPACE_BASE=$(pwd)/opendevin

docker run \
    -it \
    --rm \
    --add-host host.docker.internal:host-gateway \
    --name open_devin \
    --pull=always \
    -e SANDBOX_USER_ID=$(id -u) \
    -e WORKSPACE_MOUNT_PATH=$WORKSPACE_BASE \
    -v $WORKSPACE_BASE:/opt/workspace_base \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 3000:3000 \
    ghcr.io/opendevin/opendevin:0.7
