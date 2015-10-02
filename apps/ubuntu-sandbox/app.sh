#!/bin/bash

source $BASE_APP
DATA_DIR="$DATA_ROOT/ubuntu-sandbox/"

docker run --rm -it \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    test/ubuntu-sandbox bash
