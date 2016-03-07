#!/bin/bash

APP_NAME="ruby-test"
source $BASE_APP    # This provides $DATA_DIR
source $APP_CFG

docker run --rm -it \
    -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent \
    -v $DATA_DIR:/host/ \
    -v `pwd`:/code \
    $IMAGE
