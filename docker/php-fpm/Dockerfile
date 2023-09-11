FROM php:8.2-fpm
WORKDIR "/application"

# Install tools
RUN apt-get update && apt-get install -y \
        sudo \
		curl \
        git \
        gnupg \
        libicu-dev  \
        libzip-dev \
		apt-transport-https && \
    apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN docker-php-ext-install \
        pdo pdo_mysql zip intl

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer &&\
    chmod +x /usr/local/bin/composer

# Create docker sudo user
RUN useradd -ms /bin/bash docker && adduser docker sudo
