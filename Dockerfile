From alpine:latest
LABEL maintainer=SamSun<asdfsx@gmail.com>

Run apk --update add git less openssh curl wget tree && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
