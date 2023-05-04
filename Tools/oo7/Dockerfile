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
RUN apt-get -y install tmux
RUN apt-get -y install vim
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install git-all
RUN add-apt-repository --yes ppa:avsm/ppa
RUN apt-get -y update
RUN apt-get --yes install opam
RUN apt-get update

USER docker
RUN git clone https://github.com/winter2020/oo7.git
RUN git clone https://github.com/BinaryAnalysisPlatform/bap-toolkit.git
WORKDIR /home/docker/oo7
RUN mkdir blake2b                                                                                                                                                                                           
                                                                                                                                                                                                            
WORKDIR /home/docker
RUN opam init --yes --comp=4.14.0
RUN eval $(opam env --switch=4.14.0)
RUN eval `opam config env`

USER root
RUN apt-get -y install binutils-multiarch clang libgmp-dev libncurses5-dev llvm-9-dev m4 pkg-config zlib1g-dev
USER docker
RUN opam install --yes bap
RUN eval $(opam env)
