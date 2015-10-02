FROM ubuntu:trusty

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# To add a ppa use:
# add-apt-repository ppa:<ppa-name>
# RUN add-apt-repository ppa:{ppa-name-here} && apt-get update && \
#     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
#     {package(s) here} && \
#     apt-get clean && rm -rf /var/lib/apt/lists/*

# ENTRYPOINT ["your-command-here"]
