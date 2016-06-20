FROM phusion/baseimage

RUN apt-get update && \
    apt-get install -y --no-install-recommends mpich libmpich-dev \
                                               openssh-client openssh-server \
					       pwgen && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# add user `mpiuser`
RUN useradd -m mpiuser



# Copy the files into the container
ADD /bin /bin

EXPOSE 22

CMD ["/bin/bash", "/bin/start.sh"]