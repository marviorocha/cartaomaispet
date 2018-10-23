FROM ruby:2.5-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev && apt-get install wget -y
RUN wget -qO- https://deb.nodesource.com/setup_8.x
RUN apt-get install -y nodejs
RUN mkdir /cartaomaispet
WORKDIR /cartaomaispet
COPY Gemfile /cartaomaispet/Gemfile
COPY Gemfile.lock /cartaomaispet/Gemfile.lock
RUN bundle install
COPY . /cartaomaispet
EXPOSE 3000
CMD ["rails", "-b", "0.0.0.0"]
