FROM ubuntu:trusty

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:libreoffice/ppa && apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libreoffice-style-breeze libreoffice && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["libreoffice"]
