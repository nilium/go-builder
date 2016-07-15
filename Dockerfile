FROM golang:1.6.2-alpine

MAINTAINER Noel Cower <ncower@gmail.com>

# git             - For cloning packages
# openssl         - Cloning via https
# ca-certificates - Cloning via https
# make            - Building
# openssh-client  - Cloning via ssh, key injected over volume
RUN apk add -U git openssl ca-certificates openssh-client make && rm -rf /var/cache/apk && rm -rf /var/log && mkdir /var/log
