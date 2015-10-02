#!/bin/bash

source $BASE_APP
DATA_DIR="$DATA_ROOT/gimp/"

docker run --rm -it \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/root/Pictures \
    -v $DATA_DIR/config/:/root/.gimp-2.8/ \
    test/gimp
