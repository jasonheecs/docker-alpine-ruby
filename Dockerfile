FROM ruby:2.6-alpine AS base

LABEL name="jasonheecs/docker-alpine-ruby"
LABEL version="1.0.0"
LABEL maintainer="hello@jasonhee.com"

RUN apk add --no-cache \
    bash='>=4.0.0' \
    bash-completion='>=2.0' \
    util-linux='>=2.0' \
    coreutils='>=8.0' \
    binutils='>=2.0' \
    findutils='>=4.0' \
    grep='>3.0' \
    build-base='>=0.4' && \
    gem install bundler

CMD [ "irb" ]
