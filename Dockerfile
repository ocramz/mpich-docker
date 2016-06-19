FROM phusion/baseimage

RUN apt-get update && \
    apt-get install -y mpich &&\
    apt-get clean

