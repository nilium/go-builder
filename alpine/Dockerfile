FROM golang:1.8.0-alpine

MAINTAINER Noel Cower <ncower@gmail.com>

COPY ["nsswitch.conf", "/etc/nsswitch.conf"]

# git             - For cloning packages
# openssl         - Cloning via https
# ca-certificates - Cloning via https
# make            - Building
# openssh-client  - Cloning via ssh, key injected over volume
RUN apk add -U git openssl ca-certificates openssh-client make

ONBUILD RUN apk update && apk add -u git openssl openssh-client ca-certificates make
