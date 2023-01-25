FROM ruby:2-bullseye

RUN gem install sinatra sinatra-reloader thin data_mapper dm-sqlite-adapter 

WORKDIR /app
COPY . /app

RUN bundle install

CMD [ "./docker-cmd.sh" ]