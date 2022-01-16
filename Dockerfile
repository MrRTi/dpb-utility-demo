FROM ruby:3.1.0-alpine

ARG RAILS_ROOT=/app
ARG PACKAGES="vim openssl-dev postgresql-dev build-base curl nodejs yarn less tzdata git postgresql-client bash screen"

RUN apk update \
  && apk upgrade \
  && apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.2.30 rubygems-bundler

RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

ADD . $RAILS_ROOT
ENV PATH=$RAILS_ROOT/bin:${PATH}

COPY Gemfile Gemfile.lock  ./
RUN bundle install --jobs 5

RUN echo "PS1='\[\033[1;31m\](\$RAILS_ENV) \[\033[1;33m\]\u \[\033[1;36m\]\h \[\033[1;34m\]\w\[\033[0;35m\] \[\033[1;36m\]# \[\033[0m\]'" >> /etc/bash.bashrc

ADD . /app

EXPOSE 3000
CMD bundle exec rails s -b '0.0.0.0' -p 3000
