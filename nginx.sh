#! /bin/bash
docker run --name nginx-load-balance --mount type=bind,source=./nginx/nginx.conf,target=/etc/nginx/nginx.conf --network labnet --network-alias nginx-lb -p 8080:8080 nginx:1.27.1-alpine
