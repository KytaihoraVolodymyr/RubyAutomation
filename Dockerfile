FROM ruby:2.6.8

WORKDIR /app

COPY . /app

RUN gem install bundler

RUN bundle install