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
mix --force local.hex
mix --force local.rebar
mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

PORT=80 MIX_ENV=prod mix phoenix.server
