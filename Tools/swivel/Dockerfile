FROM ubuntu:20.04

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker
CMD /bin/bash

WORKDIR /home/docker

USER root
RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install git
RUN apt-get -y install zip
RUN apt-get -y install wget
RUN apt-get -y install make
RUN apt-get -y install vim

USER docker
RUN git clone https://github.com/PLSysSec/swivel.git
