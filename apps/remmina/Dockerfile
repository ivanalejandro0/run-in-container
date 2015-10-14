FROM ubuntu:trusty

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:remmina-ppa-team/remmina-next && apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    hicolor-icon-theme \
    remmina remmina-plugin-vnc remmina-plugin-rdp && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "remmina" ]
