#!/bin/bash

APP_NAME="app-name"  # You need to define this

source $BASE_APP
DATA_DIR="$DATA_ROOT/$APP_NAME/"

docker run --rm -it \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    ubuntu:14.04 bash

