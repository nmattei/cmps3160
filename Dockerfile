FROM ruby:2.7

WORKDIR /srv/jekyll

# deps needed for native gems + jekyll serve
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  git \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v 1.17.1 && bundle _1.17.1_ install

COPY . .

EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
