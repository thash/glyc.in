#!/bin/bash

# Install Erlang http://elixir-lang.org/install.html#installing-erlang
yum install -y erlang
erl +V
# => expected output example: Erlang (SMP,ASYNC_THREADS,HIPE) (BEAM) emulator version 8.2.2


# http://elixir-lang.org/install.html#compiling-from-source-unix-and-mingw
curl -L -O https://github.com/elixir-lang/elixir/archive/v1.4.2.tar.gz
tar xzvf v1.4.2.tar.gz
cd elixir-1.4.2
make clean test
make install

# http://www.phoenixframework.org/docs/installation
which mix
mix --version
mix --force local.hex
mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

