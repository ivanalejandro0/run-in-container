FROM debian:8

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    rubygems ruby-dev build-essential zlib1g-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install capistrano

WORKDIR /code

ENTRYPOINT ["cap"]
