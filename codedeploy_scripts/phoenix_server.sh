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
PORT=80 MIX_ENV=prod mix phoenix.server
