#!/bin/bash
# http://www.phoenixframework.org/docs/deployment

echo "pwd ------------------\n"
pwd
echo "ls ------------------\n"
ls -lrt
echo "env ------------------\n"
env
echo "phoenix.server ------------------\n"
export HOME=/root
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/
pwd

# http://www.phoenixframework.org/docs/installation
which mix
mix --version
mix local.hex --force
mix local.rebar --force
mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

MIX_ENV=prod mix phoenix.digest
PORT=80 MIX_ENV=prod elixir --detached -S mix phoenix.server
