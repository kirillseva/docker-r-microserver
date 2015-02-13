FROM rocker/r-base

MAINTAINER kirillseva "https://github.com/kirillseva"

RUN git clone https://github.com/kirillseva/minimal-microserver /root/microserver
RUN cd /root/microserver;

EXPOSE 3464
CMD ["R", "-e", "source('server.R')"]
