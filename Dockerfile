FROM elixir:latest

MAINTAINER Manjunath Reddy <manju16832003@gmail.com>

RUN mix local.hex --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN mix local.rebar --force

WORKDIR /app