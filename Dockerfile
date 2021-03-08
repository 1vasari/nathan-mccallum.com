FROM ruby:2.7.2
LABEL maintainer="Nathan McCallum <hey@nathan-mccallum.com>"

#
# Add Node.js and Yarn
#
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install yarn --global

RUN gem install bundler --version 2.1.4

WORKDIR /usr/src/site

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY package.json yarn.lock ./
RUN yarn install
