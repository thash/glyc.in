#!/bin/bash
### check
echo 'check id/env >>>'
id
pwd
env
echo 'check id/env <<<'

# [stderr]erlexec: HOME must be set
export HOME=/root

### Install Erlang
# https://www.erlang-solutions.com/resources/download.html
# For example: when we started providing R16B02, Ubuntu 12.04 LTS Precise Pangolin still provided R14B02. Our packages are complete, easy to install and have been thoroughly tested.
wget https://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
# instaed of erlang, install esl-erlang, which includes the Erlang/OTP platform and all of its applications
yum install -y esl-erlang

### http://elixir-lang.org/install.html#compiling-from-source-unix-and-mingw
curl -L -O https://github.com/elixir-lang/elixir/archive/v1.4.2.tar.gz
tar xzvf v1.4.2.tar.gz
cd elixir-1.4.2
make install

# http://www.phoenixframework.org/docs/installation
which mix
mix --version
mix --force local.hex
mix --force local.rebar
mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

