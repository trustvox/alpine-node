FROM node:7-alpine

LABEL Trustvox Development Team "https://github.com/trustvox"

RUN \
  apk add --no-cache --virtual .build-deps python chromium \
  && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /tmp/* /var/cache/apk/* \
            /root/.npm /root/.node-gyp /root/.gnupg \
            /usr/lib/node_modules/npm/man \
            /usr/lib/node_modules/npm/doc \ 
            /usr/lib/node_modules/npm/html \
            /usr/lib/node_modules/npm/scripts

ENV CHROME_BIN /usr/bin/chromium-browser