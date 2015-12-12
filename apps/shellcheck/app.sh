#!/bin/bash

source $APP_CFG
source $BASE_APP    # This provides $DATA_DIR

passthrough_args=$@

if [ -n "$1" ]; then
    last_arg="${@: -1}"
    the_file=$(realpath $last_arg)
    the_file_name=$(basename $the_file)
    volume="-v $the_file:/host/$the_file_name"
    passthrough_args=${@#$last_arg}  # remove last argument
    file="/host/$the_file_name"
fi

docker run --rm -it \
    $volume \
    $IMAGE \
    $passthrough_args \
    $file
