FROM python:2.7-slim

RUN apt-get update && apt-get install -y texlive-full curl
