#!/bin/bash

APP_NAME="gnucash"
source $BASE_APP    # This provides $DATA_DIR

docker run --rm -it \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR/config:/root/.gnucash \
    -v $DATA_DIR/cache:/root/.cache/guile/ccache/2.0-LE-8-2.0/usr/share/gnucash/ \
    test/gnucash
