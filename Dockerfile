# TeX Live and biber
# Adapted from Kamshak/docker-texlive-biber

FROM ubuntu:16.04
MAINTAINER Konrad Grüner <konraifen88@gmail.com>

# Installing the 'apt-utils' package gets rid of the 'debconf: delaying package configuration, since apt-utils is not installed'
# error message when installing any other package with the apt-get package manager.
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    apt-utils \
	&& rm -rf /var/lib/apt/lists/*

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    biber \
	texlive \
	texlive-lang-german \
	texlive-generic-extra \
	texlive-bibtex-extra \
    make \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/share/doc/texlive/* \
	&& rm -rf /usr/share/doc/texlive-* \
    && rm -rf /usr/local/texlive/2014/texmf-dist/source/*;