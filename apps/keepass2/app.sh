#!/bin/bash

source $BASE_APP
DATA_DIR="$DATA_ROOT/keepass2/"

docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    test/keepass2
