FROM ubuntu:trusty

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    cabal-install && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -r user_grp && useradd -r -g user_grp user && \
    mkdir /home/user && chown user:user_grp /home/user

USER user
WORKDIR /home/user

RUN cabal update && \
    cabal install shellcheck

ENV PATH /home/user/.cabal/bin:$PATH

ENTRYPOINT ["shellcheck"]
