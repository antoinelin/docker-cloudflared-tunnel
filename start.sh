#!/bin/sh
cloudflared tunnel create $TUNNEL_NAME
cloudflared tunnel route dns $TUNNEL_NAME $TUNNEL_HOSTNAME
cloudflared tunnel --url $TUNNEL_URL run $TUNNEL_NAME
