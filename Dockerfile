FROM rocker/r-base

MAINTAINER kirillseva "https://github.com/kirillseva"

RUN \
  # Update aptitude with new repo
  apt-get update && \
  # Install software
  apt-get install -y git curl libcurl4-openssl-dev && \
  # Clone the server repo and go to that directory
  git clone https://github.com/kirillseva/minimal-microserver.git && \
  cd minimal-microserver && \
  # chmod the executable of the server
  chmod +x server.R

EXPOSE 3464

ENTRYPOINT ["./server.R"]
