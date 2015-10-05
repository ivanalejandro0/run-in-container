#!/bin/bash

APP_NAME="app-name"  # You need to define this

# $BASE_APP will be defined at this point
# This `source` provides $DATA_DIR to be used as root for your data
source $BASE_APP

docker run --rm -it \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    ubuntu:14.04 bash
