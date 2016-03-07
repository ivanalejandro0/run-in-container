#!/bin/bash

APP_NAME="audacity"
source $BASE_APP    # This provides $DATA_DIR
source $APP_CFG

# no audio, I should use (network) local pulse or connect with a pulseaudio container (aka jess/pulseaudio)
docker run --rm -it \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    $IMAGE
