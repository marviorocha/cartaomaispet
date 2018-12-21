FROM ruby:2.5-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn vim openssh-server

ENV HOME /var/www/myapp/

RUN mkdir -p $HOME
RUN mkdir -p /root/.ssh

WORKDIR $HOME

COPY Gemfile* ./
COPY . .
COPY id_rsa* /root/.ssh/
ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

RUN bundle install
RUN bundle config --global frozen 1

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN apt-get update && apt-get upgrade -y
EXPOSE 3000

CMD bundle exec puma -C config/puma.rb
