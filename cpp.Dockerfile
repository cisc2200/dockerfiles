FROM mcr.microsoft.com/vscode/devcontainers/cpp:focal

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install clangd libgmp-dev \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

ENV GIT_EDITOR=vi
ENV CC=clang
ENV CXX=clang++
