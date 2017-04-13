FROM golang:1.8.1-alpine

MAINTAINER Noel Cower <ncower@gmail.com>

COPY ["alpine/nsswitch.conf", "/etc/nsswitch.conf"]

# git             - For cloning packages
# openssl         - Cloning via https
# ca-certificates - Cloning via https
# make            - Building
# openssh-client  - Cloning via ssh, key injected over volume
# bash            - Shell dependency
# curl / wget     - HTTP requests
# tar             - GNU tar
# jq              - Parsing JSON
# m4              - Templating
# gzip            - Compression tools
RUN apk add -U git openssl ca-certificates openssh-client make bash curl wget tar jq m4 gzip

# Upgrade dependencies in derived images
ONBUILD RUN apk update && apk add -u git openssl ca-certificates openssh-client make bash curl wget tar jq m4 gzip
