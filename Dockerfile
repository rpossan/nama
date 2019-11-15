FROM ruby:2.6.5
LABEL NA "ronaldo.possan@gmail.com"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN mkdir /nama
WORKDIR /nama
COPY . /nama

RUN bundle install
RUN rake test

CMD rake test /nama/test