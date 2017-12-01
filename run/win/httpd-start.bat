docker run ^
 --rm -d ^
 -v %~dp0\..\..\htdocs\:/var/www/html/ ^
 -v %~dp0\..\..\httpd/conf.d\:/etc/apache2/sites-enabled/ ^
 -v %~dp0\..\..\httpd\logs\:/var/log/apache2/ ^
 -p 80:80 --name xHttpd xer/php:7-apache