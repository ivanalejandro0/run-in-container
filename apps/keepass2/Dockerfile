FROM debian:jessie

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    keepass2 xdotool && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/keepass2"]
