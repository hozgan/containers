FROM 'php:7.4-fpm'

RUN apt update
RUN apt-get install -y curl git
RUN apt-get install -y curl vim
RUN apt-get install -y curl zip
RUN apt-get install -y curl unzip
RUN apt-get install -y curl python
RUN apt-get install -y curl build-essential
RUN apt-get install -y curl libc6
RUN apt-get install -y curl libpng-dev
RUN apt-get install -y curl libonig-dev
RUN apt-get install -y curl libxml2-dev
RUN apt-get install -y curl libzip-dev

RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install xml
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install json

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY ./composer-installation.sh /usr/local/bin/composer-installation.sh
RUN chmod +x /usr/local/bin/composer-installation.sh

ENTRYPOINT ["/usr/local/bin/composer-installation.sh"]