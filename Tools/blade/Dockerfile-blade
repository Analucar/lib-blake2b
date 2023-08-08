FROM ubuntu:18.04

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker
CMD /bin/bash

WORKDIR /home/docker

USER root
RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install software-properties-common
RUN apt-get -y install zip
RUN apt-get -y install wget
RUN apt-get -y install git
RUN apt-get -y install cmake
RUN apt-get -y install clang
RUN apt-get -y install python
RUN apt-get -y install vim
RUN apt-get -y install cargo
RUN wget -qO /usr/local/bin/ninja.gz https://github.com/ninja-build/ninja/releases/latest/download/ninja-linux.zip
RUN gunzip /usr/local/bin/ninja.gz
RUN chmod a+x /usr/local/bin/ninja

USER docker
RUN git clone https://github.com/PLSysSec/blade.git
RUN git clone https://github.com/PLSysSec/lucet-blade.git -b blade
RUN git clone --recursive https://github.com/WebAssembly/wasi-sdk.git
RUN git clone --recursive https://github.com/WebAssembly/wabt.git -b 1.0.15
RUN git clone https://github.com/WebAssembly/binaryen.git -b version_90
RUN git clone https://github.com/hacl-star/hacl-star.git

WORKDIR /home/docker/lucet-blade
RUN git submodule update --init --recursive

WORKDIR /home/docker/wasi-sdk
RUN wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-12/wasi-sdk-12.0-linux.tar.gz
RUN tar xvf wasi-sdk-12.0-linux.tar.gz

WORKDIR /home/docker/wabt
RUN git submodule update --init
RUN make

WORKDIR /home/docker/binaryen
RUN git submodule init
RUN git submodule update
RUN cmake . && make

WORKDIR /home/docker/hacl-star
RUN git checkout de6a314ab

WORKDIR /home/docker
