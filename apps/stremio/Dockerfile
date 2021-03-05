FROM ubuntu:bionic

# ubuntu:bionic not currently supported on Stremio 4.4.120-1
# https://github.com/Stremio/stremio-bugs/issues/243
# stremio: error while loading shared libraries: libx264.so.152: cannot open shared object file: No such file or directory
# On ubuntu 20.04 there's no libx264-152, only 155, so I guess it cannot be installed on 20.04

LABEL maintainer="Ivan Alejandro <ivanalejandro0@gmail.com>"
LABEL version="4.4.120"

# from: https://www.stremio.com/downloads
ADD stremio_4.4.120-1_amd64.deb /

# TZ to solve problem when using ubuntu:bionic {
# https://serverfault.com/q/949991
ENV TZ=America/New_York
# }

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install libpulse0 libfribidi0 xdg-utils --yes --fix-broken && \
    apt-get install /stremio_4.4.120-1_amd64.deb --yes --fix-broken && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ENV HOME /home/stremio
#
# # RUN groupadd -r stremio && useradd -r -g stremio -G audio,video stremio \
# #     && mkdir -p /home/stremio/ && chown -R stremio:stremio /home/stremio
#
# RUN useradd --create-home --home-dir $HOME stremio \
#         && usermod -aG audio,video stremio \
#         && chown -R stremio:stremio $HOME
#
# WORKDIR $HOME
# USER stremio

# ENTRYPOINT ["your-command-here"]
