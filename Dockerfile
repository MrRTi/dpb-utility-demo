FROM ruby:3.1.0-alpine

ARG PACKAGES="vim openssl-dev postgresql-dev build-base curl nodejs yarn less tzdata git postgresql-client bash screen"

RUN apk update \
  && apk upgrade \
  && apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.2.30 rubygems-bundler

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile
# COPY Gemfile.lock Gemfile.lock
RUN bundle install --jobs 3

ADD . /app

EXPOSE 3000
CMD bundle exec rails s -b '0.0.0.0' -p 3000
