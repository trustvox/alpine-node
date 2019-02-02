FROM node:10-alpine

LABEL Trustvox Development Team "https://github.com/trustvox"

RUN \
  echo -n "" > /etc/apk/repositories \
  && echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories \
  && echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories \
  && apk add --update --no-cache --virtual .build-deps git chromium>63 \
  && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /tmp/* /var/cache/apk/* \
            /root/.npm /root/.node-gyp /root/.gnupg \
            /usr/lib/node_modules/npm/man \
            /usr/lib/node_modules/npm/doc \ 
            /usr/lib/node_modules/npm/html \
            /usr/lib/node_modules/npm/scripts

ENV CHROME_BIN /usr/bin/chromium-browser
ENV LIGHTHOUSE_CHROMIUM_PATH /usr/bin/chromium-browser
