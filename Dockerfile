# Recent image advised to avoid older textlive version
# as we use the latest pandoc .deb
FROM ubuntu:disco-20190718

LABEL maintainer="Youri Ackx https://github.com/yackx/pandoc-docker"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -q

# Using a recent version of pandoc
# as Ubuntu packages are quiet outdated
RUN apt install -qy wget
RUN wget -nv https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb
RUN dpkg -i pandoc-2.7.3-1-amd64.deb

RUN apt-get install -qy \
      texlive-latex-recommended\
      texlive-latex-extra\
      fonts-freefont-ttf \
      build-essential\
      make \
      git

# Extend fonctionnalities with xetex and add extra fonts.
# Note: these dependencies increase the image size considerably
RUN apt-get install -qy \
      texlive-xetex\
      texlive-fonts-extra\
      texlive-generic-extra\
      latexmk\
      fonts-liberation

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

VOLUME ["/data"]
