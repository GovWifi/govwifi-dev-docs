FROM ruby:3.4.5-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update add g++ musl-dev make git nodejs npm yaml-dev
RUN bundle install
COPY . .

EXPOSE 4567

# LiveReload
EXPOSE 35729

RUN bundle exec middleman build
