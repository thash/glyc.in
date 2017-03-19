#!/bin/bash
# http://www.phoenixframework.org/docs/deployment

echo "pwd ------------------\n"
pwd
echo "ls ------------------\n"
ls -lrt
echo "phoenix.server ------------------\n"
PORT=4001 MIX_ENV=prod mix phoenix.server
