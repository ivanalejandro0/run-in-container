#!/bin/bash

source $APP_CFG
source $BASE_APP    # This provides $DATA_DIR

passthrough_args=$@

docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent \
    -v $DATA_DIR:/host/ \
    --entrypoint bash $IMAGE $passthrough_args
