FROM 'php:5-fpm'

RUN echo "deb http://archive.debian.org/debian stretch main contrib non-free" > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN apt-get install -y python
RUN apt-get install -y build-essential
RUN apt-get install -y libc6
RUN apt-get install -y libpng-dev
RUN apt-get install -y libonig-dev
RUN apt-get install -y libxml2-dev

RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mysql
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install xml
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install json

RUN git config --global --add safe.directory /opt
RUN git config --global --add safe.directory /opt/vendor
RUN git config --global --add safe.directory /opt/vendor/way/generators

COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer
COPY ./conf/custom.ini /usr/local/etc/php/conf.d/custom.ini

COPY ./composer-installation.sh /usr/local/bin/composer-installation.sh
RUN chmod +x /usr/local/bin/composer-installation.sh

ENTRYPOINT ["/usr/local/bin/composer-installation.sh"]