FROM ruby:2.3.0

# Add extra sources and keys
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install pre-requisites
RUN apt-get update && apt-get install -y \
  nodejs \
  yarn \
  && rm -rf /var/lib/apt/lists/*

