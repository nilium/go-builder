FROM golang:1.9.0-alpine

MAINTAINER Noel Cower <ncower@gmail.com>

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
RUN apk --no-cache add git openssl ca-certificates openssh-client make bash curl wget tar jq m4 gzip && \
        echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' > /etc/nsswitch.conf

# Upgrade dependencies in derived images
ONBUILD RUN apk --no-cache add -u git openssl ca-certificates openssh-client make bash curl wget tar jq m4 gzip
