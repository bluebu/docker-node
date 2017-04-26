FROM node:alpine
MAINTAINER bluebu <bluebuwang@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  apk --update --upgrade add curl tar bash openssh-client gifsicle libjpeg-turbo-utils optipng && \
  rm /var/cache/apk/*
