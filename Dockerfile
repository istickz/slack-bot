FROM ruby:2.4.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY lib/bot.rb /usr/src/app/lib/
COPY bin/run /usr/src/app/bin/
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install --jobs 4

CMD 'bin/run'