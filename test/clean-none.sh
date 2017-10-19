#! /bin/sh

# TODO 注意没有　none 时
docker images| grep none|awk '{print $3 }'| xargs docker rmi -f
