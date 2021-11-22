ARG TAG

FROM nextcloud:${TAG}

# Add SVG-support for Imagick
RUN set -ex; \
    \
    apk add --no-cache \
    imagemagick

# SETUP PHP-FPM CONFIG SETTINGS (max_children / max_requests)
ENV PM_MAX_CHILDREN 50
ENV PM_MAX_REQUESTS 0

RUN echo "pm.max_children = ${PM_MAX_CHILDREN}" >> /usr/local/etc/php-fpm.d/zz-docker.conf && \
    echo "pm.max_requests = ${PM_MAX_REQUESTS}" >> /usr/local/etc/php-fpm.d/zz-docker.conf