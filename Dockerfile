FROM ubuntu:16.04
MAINTAINER Ryan Zoeller <rtzoeller@rtzoeller.com>

RUN apt-get update && \
    apt-get install -qqy openssl

RUN apt-get update && \
    apt-get install -qqy software-properties-common && \
    add-apt-repository ppa:fkrull/deadsnakes && \
    add-apt-repository ppa:pypy/ppa && \
    apt-get update

RUN apt-get install -qqy \
    python2.4 \
    python2.5 \
    python2.6 \
    python2.7 \
    python3.1 \
    python3.2 \
    python3.3 \
    python3.4 \
    python3.5 \
    python3.6 \
    pypy

RUN apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
