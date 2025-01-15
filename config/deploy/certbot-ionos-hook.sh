#!/bin/sh

curl -H "X-API-Key: ${IONOS_API_KEY}" -X 'POST' "https://api.hosting.ionos.com/dns/v1/zones/${ZONE_ID}/records" -H 'Content-Type: application/json' -H "Accept: application/json" -d "[{\"name\": \"_acme-challenge.${CERTBOT_DOMAIN}.\", \"content\": \"${CERTBOT_VALIDATION}\", \"type\": \"TXT\", \"ttl\": 60 }]"
