FROM alpine:latest

LABEL antoinelin.com.authors="Antoine Lin <contact@antoinelin.com>"

ARG TUNNEL_NAME
ENV TUNNEL_NAME $TUNNEL_NAME

ARG TUNNEL_HOSTNAME
ENV TUNNEL_HOSTNAME $TUNNEL_HOSTNAME

ARG TUNNEL_URL
ENV TUNNEL_URL $TUNNEL_URL

WORKDIR /root

RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64
RUN cp ./cloudflared-linux-arm64 /usr/local/bin/cloudflared
RUN chmod +x /usr/local/bin/cloudflared

CMD ["sh", "/etc/cloudflared/start.sh"]
