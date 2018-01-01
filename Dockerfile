FROM ruby:2.4.2-alpine

MAINTAINER Dmitriy Grechukha 'dmitriy.grechukha@gmail.com'

ENV RAILS_ENV production
ENV RAKE_ENV production
ENV RAILS_SERVE_STATIC_FILES 1

COPY . /app

WORKDIR /app
EXPOSE 3000

RUN apk add --update --no-cache --virtual .build-deps build-base git ruby-dev \
    && apk add --update --no-cache tzdata postgresql-dev libxslt-dev \
    && mkdir -p /app \
    && cd /app \
    && bundle install --without development test \
    && bundle clean \
    && cp /app/config/database.sample.yml /app/config/database.yml \
    && apk del .build-deps \
    && find / -type f -iname \*.apk-new -delete \
    && rm -rf /var/cache/apk/* \
    && rm -rf /usr/share/doc \
    && rm -rf /usr/local/share/man \
    && rm -rf /usr/local/bundle/cache \
    && find /usr/local/bundle -type d -name .git -exec rm -rf {} + ;
