FROM alpine:latest

LABEL antoinelin.com.authors="Antoine Lin <contact@antoinelin.com>"

ENV TUNNEL_NAME $TUNNEL_NAME
ENV TUNNEL_HOSTNAME $TUNNEL_HOSTNAME
ENV TUNNEL_URL $TUNNEL_URL

RUN apk update && apk upgrade && \
    apk add --no-cache tar libc6-compat curl

WORKDIR /root
RUN curl -s -O https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz
RUN tar zxf cloudflared-stable-linux-amd64.tgz
RUN chmod +x ./cloudflared

CMD ["sh", "/etc/cloudflared/start.sh"]
