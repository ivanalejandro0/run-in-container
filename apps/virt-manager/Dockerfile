FROM python:2.7

MAINTAINER Ivan Alejandro <ivanalejandro0@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libosinfo-1.0-dev libgtk2.0-bin intltool libglib2.0-bin \
    ssh-askpass && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN git clone https://github.com/virt-manager/virt-manager.git && \
#     cd virt-manager && \
#     python setup.py install && \
#     cd .. && rm -fr virt-manager

RUN git clone https://github.com/virt-manager/virt-manager.git

RUN cd virt-manager && \
    python setup.py install

ENTRYPOINT ["virt-manager"]
CMD ["--no-fork"]
