FROM mcr.microsoft.com/vscode/devcontainers/cpp:focal

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install clangd libgmp-dev python3 python3-colorama \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN cd /usr/include && wget https://raw.githubusercontent.com/onqtam/doctest/2.4.6/doctest/doctest.h

ENV GIT_EDITOR=vi
ENV CXX=g++
ENV CXXFLAGS="-O0 -g -Wall -std=c++11"
