# Docker Deployment w/ Easy HTTPS via LetsEncrypt

This repo was created to troubleshoot a bug I was encountering, but it serves as a nice example of the simplest VirtualHost/ServerBlocks type deployment environment where each docker web service is picked up by docker-compose-letsencrypt-nginx-proxy-companion, secured transparently via letsEncrypt, and proxied.

## docker-compose-letsencrypt-nginx-proxy-companion

The issue that promped creation of this repo is https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion/issues/73

## instructions

Simply get https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion installed and running on your docker host (host accessible by public IP)

Then clone this repo onto your docker host. `cp .env.sample .env` and edit this `.env` file to use your domains that are pointing to your docker host IP.

Now simply run `docker-compose up`

It may take a few minutes for the TLS/HTTPS certs to be obtained from LetsEncrypt, but your domain and subdomain will now be accessible via http or https.
