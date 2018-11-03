FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /cartaomaispet
WORKDIR /cartaomaispet
COPY Gemfile /cartaomaispet/Gemfile
COPY Gemfile.lock /cartaomaispet/Gemfile.lock
RUN bundle install
COPY . /cartaomaispet
EXPOSE 3000
CMD puma -C config/puma.rb
