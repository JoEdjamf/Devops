FROM php:fpm

RUN apt-get update 

# install wget
RUN apt-get install wget -y

# install phpunit
RUN wget https://phar.phpunit.de/phpunit-8.2.5.phar
RUN chmod ugo+x phpunit-8.2.5.phar
RUN mv phpunit-8.2.5.phar /usr/local/bin/phpunit
RUN phpunit --version
