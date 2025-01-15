#!/bin/sh

IONOS_API_KEY=${IONOS_API_KEY} ZONE_ID=${ZONE_ID} certbot certonly --non-interactive -d ${DOCKER_DOMAIN} --preferred-challenges dns-01 --manual -m ${CERTBOT_EMAIL} --manual-auth-hook /root/certbot-ionos-hook.sh
