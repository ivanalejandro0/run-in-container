#!/bin/bash

APP_NAME="ubuntu-sandbox"
source $BASE_APP    # This provides $DATA_DIR

docker run --rm -it \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    test/ubuntu-sandbox bash
