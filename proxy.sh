#!/bin/bash

docker rm -f proxy
docker run --name proxy --restart=always -d -v /var/run/docker.sock:/tmp/docker.sock -p 80:80 -p 443:443 proxy_prod
