FROM mcandre/docker-ubuntu-slim:14.10

RUN apt-get update && apt-get install -y texlive-full
