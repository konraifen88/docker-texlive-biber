# TeX Live and biber
# Adapted from Kamshak/docker-texlive-biber

FROM ubuntu:16.04
MAINTAINER Konrad Grüner <konraifen88@gmail.com>

RUN apt-get update && apt-get install -y \
    biber \
	texlive-full \
    make \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/local/texlive/2014/texmf-dist/doc/* \
    && rm -rf /usr/local/texlive/2014/texmf-dist/source/*;