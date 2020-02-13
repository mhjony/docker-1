FROM ruby:2.3.0

RUN apt-get update; apt-get -y upgrade; apt-get -y install nodejs
RUN gem install bundler:1.16.1
RUN gem install rails
RUN mkdir -p /opt/app

COPY ./app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD RUN bundle install
ONBUILD RUN rake db:create
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed

