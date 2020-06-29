FROM node:14.4-alpine3.12

LABEL Trustvox Development Team "https://github.com/trustvox"

RUN apk --no-cache upgrade && \
    apk add --no-cache \
      bc \
      chromium \
      git \
    && rm -rf /var/cache/* \
    && mkdir /var/cache/apk
