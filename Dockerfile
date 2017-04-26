FROM node:alpine
MAINTAINER bluebu <bluebuwang@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------
RUN echo "@edge-community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN \
  apk --update --upgrade add git curl tar bash openssh-client libjpeg-turbo-utils openjpeg-dev libjpeg-turbo-dev freetype-dev gifsicle@edge-community && \
  rm /var/cache/apk/*

RUN npm install -g gulp
