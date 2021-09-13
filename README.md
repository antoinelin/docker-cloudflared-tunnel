<p align="center">
  <h1 align="center">
    docker-cloudflared-tunnel
  </h1>
</p>

<p align=center>
  Deploy your app using just a single docker command without having to setup a reverse proxy nor a single port forwarding.
</p>

## Introduction and core concepts

`docker-cloudflared-tunnel` is a Docker image based on Cloudflare Argo Tunnel solution which provide [Cloudflare daemon](https://github.com/cloudflare/cloudflared) ad-hoc capabilities through Docker.

### What is Argo Tunnel
According to the [official Cloudflare documentation](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps), Argo Tunnel is based on a lightweight daemon (`cloudflared`) running in your infrastructure that establishes outbound connections (Tunnels) between your service and the Cloudflare edge. When Cloudflare receives a request for your chosen hostname, it proxies the request through those connections to cloudflared. In turn, cloudflared proxies the request to your applications.
