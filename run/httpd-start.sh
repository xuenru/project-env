#!/usr/bin/env bash
docker run \
 --rm -d \
 -v $PWD/../htdocs/:/var/www/html/ \
 -v $PWD/../httpd/conf.d/:/etc/apache2/sites-enabled/ \
 -v $PWD/../httpd/logs/:/var/log/apache2/ \
 -p 80:80 --name xHttpd xer/php:7-apache
 