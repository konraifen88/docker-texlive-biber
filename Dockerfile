# TeX Live and biber
# Adapted from Kamshak/docker-texlive-biber

FROM ubuntu:16.04
MAINTAINER Konrad Grüner <konraifen88@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    biber \
	texlive \
	texlive-lang-german \
	texlive-generic-extra \
	texlive-bibtex-extra \
	texlive-latex-extra \
    make \
	&& rm -rf /usr/share/doc/ \
	&& rm -rf /usr/share/man/ \
	&& rm -rf /usr/share/locale/ \
    && rm -rf /var/lib/apt/lists/*;