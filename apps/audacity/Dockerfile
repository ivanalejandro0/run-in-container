FROM ubuntu:trusty

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:ubuntuhandbook1/audacity && apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y audacity && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["audacity"]
