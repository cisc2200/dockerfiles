FROM eecsautograder/ubuntu18:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get upgrade -y && apt-get install -y git wget dos2unix \
       build-essential clang-format cppcheck valgrind gdb libgmp-dev \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN cd /usr/include && wget https://raw.githubusercontent.com/onqtam/doctest/2.4.7/doctest/doctest.h

ENV force_color_prompt=yes
ENV GIT_EDITOR=vi
ENV CXX=g++
ENV CXXFLAGS="-O0 -g -Wall -std=c++14 -Werror=return-type"
