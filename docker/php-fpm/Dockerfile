FROM php:8.2-fpm
WORKDIR "/application"

# Install tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends php8.2-mysql php8.2-intl \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer &&\
    chmod +x /usr/local/bin/composer

# Install git
# RUN apt-get update \
#    && apt-get -y install git \
#    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Create docker sudo user
RUN useradd -ms /bin/bash docker && adduser docker sudo
