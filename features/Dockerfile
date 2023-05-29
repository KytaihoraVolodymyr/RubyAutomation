FROM ruby:2.6.8

RUN apt-get update \ && apt-get install -y build-essential libpq-dev nodejs

RUN gem install cucumber -v 3.1.2

WORKDIR /app

COPY . /app

CMD cucumber