#! /bin/sh

set -x
sh clean-none.sh
docker build --no-cache -t ubuntu:base ../docker-base/
