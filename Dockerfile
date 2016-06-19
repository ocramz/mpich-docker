FROM phusion/baseimage

RUN apt-get update && \
    apt-get install -y --no-install-recommends mpich mpich-bin mpich-mpd-bin mpich-shmem-bin libmpich1.0-dev \
                                               openssh-client openssh-server && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

