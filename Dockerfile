FROM ubuntu:20.04

RUN apt update
RUN apt install -y libxcb1-dev libxcb-shm0 libxcb-shm0-dev libk5crypto3 libkrb5-dev bzip2
COPY libcrypto.so.1.1 /lib/x86_64-linux-gnu/
COPY libssl.so.1.1 /lib/x86_64-linux-gnu/
COPY ffmpeg /usr/bin/ffmpeg

#RUN curl http://ipconfig.me
