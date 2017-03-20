#!/bin/bash
### check
echo 'check id/env >>>'
id
pwd
env
echo 'check id/env <<<'

### Install Erlang and Elixir
# http://elixir-lang.org/install.html#installing-erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
apt-get -y update
apt-get -y install esl-erlang elixir

# http://www.phoenixframework.org/docs/installation
which mix
mix --version
mix --force local.hex
mix --force local.rebar
mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

