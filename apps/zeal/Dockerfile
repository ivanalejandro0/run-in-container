FROM ubuntu:bionic

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:zeal-developers/ppa && apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y zeal && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN mkdir -p /home/user && groupadd -r user_grp && useradd -r -g user_grp user && chown user:user_grp /home/user
# WORKDIR /home/user
# USER user

ENTRYPOINT ["zeal"]
