FROM eecsautograder/ubuntu18:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get upgrade -y && apt-get install -y git wget dos2unix \
       build-essential clangd-10 cppcheck valgrind gdb libgmp-dev \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN cd /usr/include && wget https://raw.githubusercontent.com/onqtam/doctest/2.4.6/doctest/doctest.h

ENV TERM=xterm-256color
# ENV PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
ENV GIT_EDITOR=vi
ENV CXX=g++
ENV CXXFLAGS="-O0 -g -Wall -std=c++11"
