#!/bin/bash

APP_NAME="nginx-proxy"
source $BASE_APP    # This provides $DATA_DIR
source $APP_CFG

docker run --rm -it \
    -p 80:80 -p 443:443 \
    -v /var/run/docker.sock:/tmp/docker.sock \
    -v $DATA_DIR/htpasswd:/etc/nginx/htpasswd \
    -v $DATA_DIR/certs:/etc/nginx/certs \
    -v $DATA_DIR/vhost.d:/etc/nginx/vhost.d:ro \
    -v $DATA_DIR:/host/ \
    $IMAGE
