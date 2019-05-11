FROM ubuntu:bionic

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

# from: https://www.stremio.com/downloads
ADD stremio_4.4.52-1_amd64.deb /

RUN apt-get update && \
    apt-get install /stremio_4.4.52-1_amd64.deb --yes --fix-broken && \
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
