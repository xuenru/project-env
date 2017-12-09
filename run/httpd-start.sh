#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run \
 --rm -d \
 -v $DIR/../htdocs/:/var/www/html/ \
 -v $DIR/../httpd/conf.d/:/etc/apache2/sites-enabled/ \
 -v $DIR/../httpd/logs/:/var/log/apache2/ \
 -p 80:80 \
 --name xHttpd \
 xer/php:7-apache
 
