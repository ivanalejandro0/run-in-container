#!/bin/sh

# NOTE: to get X11 socket forwarding to work we need this
xhost local:root

docker run --rm -it \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v `pwd`:/host/ \
    test/sqlitebrowser
