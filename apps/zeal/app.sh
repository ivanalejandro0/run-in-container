#!/bin/bash

source $BASE_APP
DATA_DIR="$DATA_ROOT/zeal/"

docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR/docsets/:/root/.local/share/Zeal/Zeal/docsets/ \
    -v $DATA_DIR/config/:/root/.config/Zeal \
    -v $DATA_DIR/cache/:/root/.cache/Zeal \
    -v $DATA_DIR:/host/ \
    --name zealdocs \
    test/zeal
