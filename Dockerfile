FROM ruby:3

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

CMD [ "./docker-cmd.sh" ]