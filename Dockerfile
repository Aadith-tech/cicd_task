FROM nginx:1.19-alpine

RUN apk add --no-cache \
    openssl \
    curl \
    wget \
    openssh

COPY ./html /usr/share/nginx/html
