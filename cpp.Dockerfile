FROM eecsautograder/ubuntu18:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get upgrade -y && apt-get install -y git wget dos2unix openssh-server \
       build-essential clang-format cppcheck valgrind gdb libgmp-dev \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN service ssh start
EXPOSE 22

RUN cd /usr/include && wget https://raw.githubusercontent.com/onqtam/doctest/v2.4.8/doctest/doctest.h

ENV force_color_prompt=yes
ENV GIT_EDITOR=vi
ENV CXX=g++
ENV CXXFLAGS="-O0 -g -Wall -std=c++14 -Werror=return-type"
