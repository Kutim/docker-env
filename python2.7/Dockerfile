FROM python:2.7
LABEL maintainer="1252900197@qq.com"

# 环境变量
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Shanghai 
    
# 设置源、时区、UTF-8
RUN set -x && \
  sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
  apt-get update -qq&& \
  apt-get install -y tzdata apt-utils && \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
  apt-get install -y locales && \
  echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen en_US.UTF-8 && \
  dpkg-reconfigure locales && \
  /usr/sbin/update-locale LANG=en_US.UTF-8 && \
  apt-get install -y iptables && \
  rm /var/lib/apt/lists/* -vfR

ENV LC_ALL en_US.UTF-8


