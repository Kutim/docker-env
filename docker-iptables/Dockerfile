FROM ubuntu:base
LABEL maintainer="1252900197@qq.com"
    
# 设置源、时区、UTF-8
RUN set -x && \
  apt-get update -qq && \
  apt-get -y install iptables && \
  rm /var/lib/apt/lists/* -vfR

# Define default command.
CMD [ "/bin/bash", "-l"]
