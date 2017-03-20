#!/bin/bash
# http://www.phoenixframework.org/docs/deployment

echo "pwd ------------------\n"
pwd
echo "ls ------------------\n"
ls -lrt
echo "phoenix.server ------------------\n"
export HOME=/root
MIX_ENV=prod mix deps.get
PORT=80 MIX_ENV=prod mix phoenix.server
