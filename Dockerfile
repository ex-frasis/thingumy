FROM ruby:2.2.3

RUN apt-get -y update && apt-get -y upgrade

COPY . /src
WORKDIR /src

ADD ./Gemfile /src
ADD ./Gemfile.lock /src

RUN gem install bundler

RUN bundle install --full-index -j4

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get install -y nodejs

ADD . /src
