FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
COPY Gemfile* startup ./
RUN bundle install
# ADD . /myapp
# ENTRYPOINT bash startup.sh && bundle exec rails s -p 3000 -b '0.0.0.0'
