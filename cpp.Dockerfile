FROM mcr.microsoft.com/vscode/devcontainers/cpp:bionic

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install clangd-10 \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/clangd-10 /usr/bin/clangd

ENV GIT_EDITOR=vi
ENV CC=clang
ENV CXX=clang++
