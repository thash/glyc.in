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
PORT=80 MIX_ENV=prod mix phoenix.server
