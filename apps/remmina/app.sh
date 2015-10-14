#!/bin/bash

APP_NAME="remmina"
source $BASE_APP    # This provides $DATA_DIR

docker run --rm -it \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR/config:/root/.remmina \
    test/remmina
