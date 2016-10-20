FROM golang:1.7.1

MAINTAINER Noel Cower <ncower@gmail.com>

# git             - For cloning packages
# openssl         - Cloning via https
# ca-certificates - Cloning via https
# make            - Building
# openssh-client  - Cloning via ssh, key injected over volume
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list && \
        apt-get update && apt-get install -y --no-install-recommends -t jessie-backports libc6 git openssl ca-certificates openssh-client make

ONBUILD RUN RUN apt-get update && apt-get install -y --no-install-recommends -t jessie-backports libc6 git openssl ca-certificates openssh-client
