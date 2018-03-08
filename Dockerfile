FROM alpine
LABEL maintainer=milobahg
LABEL operation=decrypt
RUN apk update && apk upgrade && apk add openssl && mkdir /data && cd /data
WORKDIR /data
ENTRYPOINT ["/usr/bin/openssl", "aes-256-cbc", "-d", "-a"]
