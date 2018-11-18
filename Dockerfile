FROM ruby:2.5-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs git

RUN apt-get update
RUN mkdir /cartaomaispet
WORKDIR /cartaomaispet
COPY Gemfile /cartaomaispet/Gemfile
COPY Gemfile.lock /cartaomaispet/Gemfile.lock
COPY . ./
RUN bundle install

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

COPY . /cartaomaispet
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5
EXPOSE 3000
ENTRYPOINT ["bundle", "exec"]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
