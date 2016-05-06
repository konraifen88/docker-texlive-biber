
# TeX Live and biber
# Adapted from koep/texlive

FROM debian:jessie
MAINTAINER Valentin Funk <funk.valentin@gmail.com>

RUN apt-get update && apt-get install -y \
    texlive-full \
    biber \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/local/texlive/2014/texmf-dist/doc/* \
    && rm -rf /usr/local/texlive/2014/texmf-dist/source/*;
