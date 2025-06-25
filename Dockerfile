<<<<<<< HEAD
FROM ruby:3.4.4-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update add g++ musl-dev make git nodejs npm yaml-dev

RUN bundle install
COPY . .

EXPOSE 4567

# LiveReload
EXPOSE 35729

RUN bundle exec middleman build
=======
FROM ruby:3.4.3-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .ruby-version ./

RUN apk --update add g++ musl-dev make git nodejs npm yaml-dev

RUN bundle install
COPY . .

EXPOSE 4567

# LiveReload
EXPOSE 35729

RUN bundle exec middleman build
>>>>>>> 38fd66b4e5a549f242098e40b1156d422102ab1d
