FROM ruby:alpine
LABEL maintainer "ok@procoders.tech"

RUN gem install sinatra encrypted_strings

COPY ./spotify_token_swap.rb /srv/

WORKDIR /srv

EXPOSE 1234

CMD ["ruby", "spotify_token_swap.rb"]