FROM ubuntu:trusty

RUN sudo locale-gen en_US.UTF-8 && export LANG=en_US.UTF-8
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install software-properties-common -yq && LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php-7.0 -y && \
    apt-get update && apt-get install -y --force-yes \
    php7.0-cgi php7.0-cli php7.0-fpm  php7.0-curl php7.0-gd php7.0-imap \
    php7.0-interbase php7.0-intl php7.0-ldap php7.0-mcrypt php7.0-readline php7.0-odbc php7.0-pgsql php7.0-pspell php7.0-recode \
    php7.0-tidy php7.0-xmlrpc php7.0 php7.0-json  php7.0-sybase php7.0-sqlite3 php7.0-mysql php7.0-opcache php7.0-bz2
    #php7.0-modules-source
    #php7.0-phpdbg 
    #libphp7.0-embed
    #php7.0-dev
    # php7.0-dbg php-all-dev

COPY local.ini /etc/php/mods-available/local.ini
COPY www.conf /etc/php/7.0/fpm/pool.d/www.conf
COPY php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

RUN phpenmod  -s fpm  local && php-fpm7.0 -i |grep disable_functions

ENV PHP_FPM_USER=www-data

RUN mkdir -p /var/www

# EXPOSE 9000

CMD php-fpm7.0 -F -O


