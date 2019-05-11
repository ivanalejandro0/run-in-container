#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source $SCRIPT_DIR/$1/app.cfg

if [ $X11 == "true" ]; then
    X11_OPTS="-v /tmp/.X11-unix:/tmp/.X11-unix"
    X11_OPTS="$X11_OPTS -e DISPLAY=unix$DISPLAY"
else
    X11_OPTS=""
fi

if [ $NET_HOST == "true" ]; then
    NET_OPTS="--net host"
else
    NET_OPTS=""
fi

# Add the -v switch before each path
VOLUMES=`echo $DATA_DIRS | sed -s "s/ / -v /g" | sed -s "s/^/-v /"`

# Add the -p switch before each port
if [ -n "$PORTS" ]; then
    PORTS=`echo $PORTS | sed -s "s/ / -p /g" | sed -s "s/^/-p /"`
else
    PORTS=""
fi

if [ $DAEMON == "true" ]; then
    RUN_OPTS="-d"
else
    RUN_OPTS="--rm -it"
fi

shift  # remove app name from arg list
passthrough_args=$@

docker run $RUN_OPTS \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/machine-id:/etc/machine-id:ro \
    -v /var/run/dbus:/var/run/dbus \
    $NET_OPTS \
    $PORTS \
    $X11_OPTS \
    $VOLUMES \
    $IMAGE $passthrough_args
