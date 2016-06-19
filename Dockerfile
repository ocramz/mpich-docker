FROM phusion/baseimage

RUN apt-get update && \
    apt-get install -y --no-install-recommends mpich openssh-client openssh-server && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

