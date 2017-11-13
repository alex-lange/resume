FROM ubuntu:16.04
RUN adduser --home /home/alex --shell /bin/bash alex && adduser alex sudo
RUN apt-get update && apt-get install sudo
USER alex
RUN sudo apt-get install -y texlive-full && \
    texlive-luatex

