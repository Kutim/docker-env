FROM ubuntu:17.10
LABEL maintainer="1252900197@qq.com"

USER root

# 环境变量
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Shanghai 
    
# 设置源、时区、UTF-8
RUN set -x && \
  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
  apt-get update -qq && \
  apt-get -y install tzdata && \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
  apt-get install -y locales && \
  echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen en_US.UTF-8 && \
  dpkg-reconfigure locales && \
  /usr/sbin/update-locale LANG=en_US.UTF-8 && \
  rm /var/lib/apt/lists/* -vfR

ENV LC_ALL en_US.UTF-8

# Define default workdir
WORKDIR /root

# Define default command.
CMD [ "/bin/bash", "-l"]
