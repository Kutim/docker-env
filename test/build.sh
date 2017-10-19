#! /bin/sh

set -x
# sh clean-none.sh

cd ..
HOME=`pwd`

#cd $HOME/docker-base/
#docker build --no-cache -t ubuntu:base .


#cd $HOME/docker-iptables/
#docker build --no-cache -t ubuntu:iptables .


cd $HOME/pythonbase/
docker build --no-cache -t python:base .
