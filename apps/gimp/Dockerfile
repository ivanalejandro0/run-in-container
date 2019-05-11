FROM ubuntu:bionic

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dbus-x11 \
    gimp gimp-plugin-registry && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ADD gimp-wrapper.sh /

ENTRYPOINT ["/gimp-wrapper.sh"]
# ENTRYPOINT ["bash"]
