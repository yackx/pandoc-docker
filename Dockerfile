# Recent image advised to avoid older textlive version
# as we use the latest pandoc .deb
FROM ubuntu:focal-20201008

LABEL maintainer="Youri Ackx https://github.com/yackx/pandoc-docker"

ARG DEBIAN_FRONTEND=noninteractive

# Using a recent version of pandoc
# as Ubuntu packages are quiet outdated
RUN apt-get update -q && \
    apt-get install -qy wget unzip && \
    wget -nv https://github.com/jgm/pandoc/releases/download/2.11.0.2/pandoc-2.11.0.2-1-amd64.deb && \
    dpkg -i pandoc-2.11.0.2-1-amd64.deb

# FiraSans is used in the popular "metropolis" beamer theme 
RUN wget -nv https://github.com/bBoxType/FiraSans/archive/master.zip && \
    unzip master.zip && \
    mkdir -p /usr/share/fonts/opentype/fira && \
    mkdir -p /usr/share/fonts/truetype/fira
RUN find FiraSans-master/ -name "*.otf" -exec cp {} /usr/share/fonts/opentype/fira/ \;
RUN find FiraSans-master/ -name "*.ttf" -exec cp {} /usr/share/fonts/truetype/fira/ \;

RUN apt-get install -qy \
        texlive-latex-recommended \
        texlive-latex-extra \
        fonts-freefont-ttf \
        build-essential \
        make \
        git \
        # Extend fonctionnalities with xetex and latexmk
        # and add extra fonts.
        # Note: some of these dependencies increase the image size considerably
        texlive-xetex  \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        latexmk \
        fonts-liberation \
        fonts-firacode && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data

VOLUME ["/data"]
