FROM node

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

# Install dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libasound2 \
    libgconf-2-4 \
    libgnome-keyring-dev \
    libgnome-keyring-dev \
    libgtk2.0-0 \
    libnss3 \
    libxtst6 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /src

RUN LATEST_TAG=`git ls-remote --tags https://github.com/atom/atom | sort -t '/' -k3 --version-sort | tail -n1 | cut -d'/' -f3` && \
    git clone -b $LATEST_TAG https://github.com/atom/atom --depth 1 /src && \
    script/build && script/grunt install && \
    rm -fr /src

ENTRYPOINT ["/usr/local/bin/atom", "--foreground"]
