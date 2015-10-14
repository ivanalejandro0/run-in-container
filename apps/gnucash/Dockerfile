FROM ubuntu:trusty

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add - && \
    echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb apps" > /etc/apt/sources.list.d/getdeb.list && \
    apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gnucash gnucash-docs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["gnucash"]
