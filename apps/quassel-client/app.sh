#!/bin/bash

APP_NAME="quassel-client"
source $BASE_APP    # This provides $DATA_DIR

docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    test/quassel-client
