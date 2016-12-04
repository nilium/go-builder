FROM golang:1.7.4-alpine

MAINTAINER Noel Cower <ncower@gmail.com>

# git             - For cloning packages
# openssl         - Cloning via https
# ca-certificates - Cloning via https
# make            - Building
# openssh-client  - Cloning via ssh, key injected over volume
RUN apk add -U git openssl ca-certificates openssh-client make

ONBUILD RUN apk update && apk add -u git openssl openssh-client ca-certificates make
