#!/bin/bash

source $APP_CFG
source $BASE_APP    # This provides $DATA_DIR

passthrough_args=$@

docker run --rm -it \
    -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent \
    -v $DATA_DIR:/host/ \
    -v `pwd`:/code \
    $IMAGE $passthrough_args
