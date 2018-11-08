FROM node:10

MAINTAINER Kagawa Gao <kingsongao1221@gmail.com>

ARG VERSION=3.2.3

LABEL version=$VERSION

RUN apt-get update

RUN apt-get install -y -qq sshpass

RUN apt-get install -y sudo

# install gitbook-cli
RUN npm install -g gitbook-cli

# install gitbook
RUN gitbook fetch ${VERSION}

# clean cache
RUN npm cache clear && rm -rf /tmp/*
