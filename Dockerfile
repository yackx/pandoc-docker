FROM ubuntu:bionic

LABEL maintainer="Youri Ackx https://github.com/yackx/pandoc-docker"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q \
    && apt-get install -qy \
    pandoc \
    texlive-full \
    fonts-freefont-ttf \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data

VOLUME ["/data"]
