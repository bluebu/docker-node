FROM node:alpine
MAINTAINER bluebu <bluebuwang@gmail.com>

ENV \
  OPTIPNG_VERSION=0.7.5

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------
RUN echo "@edge-community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# libjpeg-turbo-utils openjpeg-dev libjpeg-turbo-dev freetype-dev gifsicle@edge-community 
RUN apk --update --no-cache \
    add  \
    tar bash openssh-client \
    automake \
    git \
    alpine-sdk  \
    nasm  \
    autoconf  \
    build-base \
    zlib \
    zlib-dev \
    libpng \
    libpng-dev\
    libwebp \
    libwebp-dev \
    libjpeg-turbo \
    libjpeg-turbo-dev \
  && rm /var/cache/apk/* \

  # optipng
  && curl -L -O http://downloads.sourceforge.net/project/optipng/OptiPNG/optipng-$OPTIPNG_VERSION/optipng-$OPTIPNG_VERSION.tar.gz \
  && tar zxf optipng-$OPTIPNG_VERSION.tar.gz \
  && cd optipng-$OPTIPNG_VERSION \
  && ./configure && make && make install \
  && cd .. \

RUN npm install -g gulp
