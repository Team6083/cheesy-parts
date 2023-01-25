FROM ruby:2

WORKDIR /app
COPY . /app

RUN bundle install

CMD [ "./docker-cmd.sh" ]