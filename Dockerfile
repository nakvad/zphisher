FROM alpine:latest
LABEL MAINTAINER="https://github.com/htr-tech/zphisher"

WORKDIR /zphisher
COPY . .

RUN apk add --no-cache \
    bash \
    ncurses \
    curl \
    unzip \
    wget \
    php \
    php-session \
    php-curl \
    php-xml \
    php-mbstring \
    && chmod +x /zphisher/zphisher.sh

EXPOSE 8080
CMD ["./zphisher.sh"]
