FROM alpine:3.6
MAINTAINER Kazumichi Yamamoto <yamamoto.febc@gmail.com>
LABEL MAINTAINER 'Kazumichi Yamamoto <yamamoto.febc@gmail.com>'

RUN apk add --update apache2-utils \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["htpasswd", "-mbn"]

