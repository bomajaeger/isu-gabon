FROM php:8.3-fpm

# Arguments pour créer un utilisateur non-root (évite les soucis de permissions
# sur les fichiers générés par artisan, storage/, etc.)
ARG user=laravel
ARG uid=1000

# Dépendances système nécessaires aux extensions PHP
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Extensions PHP requises par Laravel 11
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

# Composer (copié depuis l'image officielle)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Utilisateur système avec le bon UID (aligne les permissions hôte/conteneur)
RUN useradd -G www-data,root -u $uid -d /home/$user $user \
    && mkdir -p /home/$user/.composer \
    && chown -R $user:$user /home/$user

WORKDIR /var/www

USER $user