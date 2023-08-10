FROM alpine:3.15.1

RUN apt-get update && \
  apt-get install -y \
  curl

RUN mkdir -p /usr/local/bin/

ADD https://github.com/tests-always-included/mo/archive/refs/tags/3.0.2.tar.gz /tmp/mo.tar.gz

RUN tar -xzf /tmp/mo.tar.gz -C /tmp/ && \
  mv /tmp/mo-3.0.2/mo /usr/local/bin/ && \
  rm -rf /tmp/*

