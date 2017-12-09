#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run \
    --rm -d \
    -v $DIR/../mysql:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=root123 \
    -e MYSQL_USER=xer \
    -e MYSQL_PASSWORD=xer123 \
    --name xMysqld \
    -p 3307:3306 \
    mysql:8 \
