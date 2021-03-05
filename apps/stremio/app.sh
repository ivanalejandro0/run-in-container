#!/bin/bash

APP_NAME="stremio"
source $BASE_APP    # This provides $DATA_DIR

PULSE_PATH="/tmp/pulse-host/"

snd_opts="--device /dev/snd \

    -v ${XDG_RUNTIME_DIR}/pulse/native:$PULSE_PATH/server \
    -e PULSE_SERVER=unix:$PULSE_PATH/server \

    -v $HOME/.config/pulse/cookie:$PULSE_PATH/cookie \
    -e PULSE_COOKIE=$PULSE_PATH/cookie"

    # -e PULSE_COOKIE=$PULSE_PATH/cookie \"
    # --group-add $(getent group audio | cut -d: -f3)"

# bug:
#   --net host \
# this breaks stremio / qt
# https://github.com/snapcore/core18/issues/4

# CONT_HOME="/home/stremio"
CONT_HOME="/root"

# this may block audio on the host,
# possible fix: `pulseaudio -k` on host
docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/dri \
    $snd_opts \
    -v $DATA_DIR/host:/host/ \
    -v $DATA_DIR/local:$CONT_HOME/.local \
    -v $DATA_DIR/pki:$CONT_HOME/.pki \
    -v $DATA_DIR/stremio-server:$CONT_HOME/.stremio-server \
    -v $DATA_DIR/cache:$CONT_HOME/.cache \
    run-in-container/stremio stremio
