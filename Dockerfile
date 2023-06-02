FROM ubuntu:jammy-20230301

LABEL maintainer="Youri Ackx https://github.com/yackx/pandoc-docker"

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update -q && \
    apt-get install -qy \
        wget \
        unzip \
        python3-pip \
        pandoc \
        build-essential \
        make \
        git \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-xetex  \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-lang-french \
        latexmk \
        fonts-freefont-ttf \
        fonts-liberation \
        fonts-firacode && \
    rm -rf /var/lib/apt/lists/*

# FiraSans is used in the popular "metropolis" beamer theme 
RUN wget -nv https://github.com/bBoxType/FiraSans/archive/master.zip && \
    unzip master.zip && \
    mkdir -p /usr/share/fonts/opentype/fira && \
    mkdir -p /usr/share/fonts/truetype/fira
RUN find FiraSans-master/ -name "*.otf" -exec cp {} /usr/share/fonts/opentype/fira/ \;
RUN find FiraSans-master/ -name "*.ttf" -exec cp {} /usr/share/fonts/truetype/fira/ \;
RUN updmap -sys

WORKDIR /data

VOLUME ["/data"]
