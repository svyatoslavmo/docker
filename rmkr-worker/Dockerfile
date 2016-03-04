FROM ubuntu:trusty

RUN sudo locale-gen en_US.UTF-8 && export LANG=en_US.UTF-8
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install software-properties-common -yq
RUN apt-get install -y --force-yes \
        php-apc php-gettext php-pear php5 php5-apcu php5-common php5-curl php5-fpm php5-gd php5-imap php5-json php5-mcrypt php5-mysql php5-xmlrpc 

COPY local.ini /etc/php5/mods-available/local.ini
COPY www.conf /etc/php5/fpm/pool.d/www.conf
COPY php-fpm.conf /etc/php5/fpm/php-fpm.conf

RUN php5enmod -s ALL local && php5-fpm -i |grep disable_functions

ENV PHP_FPM_USER=www-data

RUN apt-get install supervisor

COPY etc/supervisor/conf.d/php-fpm.conf /etc/supervisor/conf.d/php-fpm.conf

RUN  LC_ALL=en_US.UTF-8 add-apt-repository ppa:chris-lea/nginx-devel -y && apt-get update && install nginx-full

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www

CMD supervisord -n


