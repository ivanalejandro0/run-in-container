#!/bin/bash

# ----- This lines are required, don't remove -----
# $APP_CFG and $BASE_APP will be defined at this point.
source $APP_CFG   # This must provide $APP_NAME and $IMAGE
source $BASE_APP  # This provides $DATA_DIR
# ----- This lines are required, don't remove -----

# ----- Add you custom code below -----

docker run --rm -it \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $DATA_DIR:/host/ \
    $IMAGE $passthrough_args
