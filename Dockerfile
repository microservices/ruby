FROM        ruby:2.6-alpine3.8

# update bundler to 2.0
RUN         gem update bundler
RUN         mkdir /app
ADD         Gemfile /app
ADD         Gemfile.lock /app
RUN         bundle install --gemfile=/app/Gemfile
ADD         app.rb /app/app.rb

ENTRYPOINT  ["ruby", "/app/app.rb"]
