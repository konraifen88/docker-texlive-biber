# TeX Live and biber
# Adapted from Kamshak/docker-texlive-biber

FROM ubuntu:16.04
MAINTAINER Konrad Grüner <konraifen88@gmail.com>

RUN apt-get update && apt-get install -y \
    biber \
	texlive \
	texlive-lang-german \
	texlive-generic-extra \
    make \
    --no-install-recommends \
	## Workaround do not know why, but seems not to be installed...
	&& apt-get install -y texlive-bibtex-extra
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/share/doc/texlive/* \
	&& rm -rf /usr/share/doc/texlive-* \
    && rm -rf /usr/local/texlive/2014/texmf-dist/source/*;