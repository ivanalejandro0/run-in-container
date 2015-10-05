#!/bin/bash

APP_NAME="keepass2"
source $BASE_APP    # This provides $DATA_DIR

docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    test/keepass2
