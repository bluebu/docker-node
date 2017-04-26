FROM node:alpine
MAINTAINER bluebu <bluebuwang@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  apk --update --upgrade add git curl tar bash openssh-client libjpeg-turbo-utils && \
  rm /var/cache/apk/*
